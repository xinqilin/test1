package xxx;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class GetOpenData_WithJSON3 implements SpotListDAO_interface{
	private static final String MY_URL = "https://gis.taiwan.net.tw/XMLReleaseALL_public/scenic_spot_C_f.json";
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String userid = "DA101G3";
	String passwd = "123456";
	
	private static final String INSERT_STMT =
"INSERT INTO spotlist (spotno, spotname, cityno, location, spottype, spotphoto, spotstatus, tel, spotlati, spotlong, spotdetail) VALUES ('SPT'||LPAD(to_char(SpotList_seq.NEXTVAL), 6, '0'), ?, ?, ?, ?, ? , ?, ?, ?, ?, ?)";
	
	
	
	public static void main(String[] args) throws IOException, JSONException{
		StringBuilder sb = new StringBuilder();
		URL url = new URL(MY_URL);
		HttpURLConnection con = (HttpURLConnection) url.openConnection();
		con.setRequestMethod("GET");
		con.setUseCaches(false);
		InputStream is = con.getInputStream();
		InputStreamReader isr = new InputStreamReader(is,"UTF-8");
		BufferedReader br = new BufferedReader(isr);
		
		String str;
		while ((str = br.readLine()) != null)
			sb.append(str);
		
		br.close();
		isr.close();
		is.close();
		con.disconnect();
		
		System.out.println("===================================");
		
		int j = sb.indexOf("{");
		String sc = sb.substring(j);
		JSONObject jObj = new JSONObject(sc.trim());
		JSONObject jObj2=jObj.getJSONObject("XML_Head");
		JSONObject jObj3=jObj2.getJSONObject("Infos");
		JSONArray jArray = jObj3.getJSONArray("Info");
		int k=0;
		
		
		//70
//		for (int i = 0; i < jArray.length(); i++) {
		for (int i = 900; i < 969; i++) {
			
			JSONObject data = jArray.getJSONObject(i);
			String name = data.getString("Name");
			String address=data.getString("Add");
			String tel=data.getString("Tel");
			double px=data.getDouble("Px");
			double py=data.getDouble("Py");
			String tip=data.getString("Description");
			
			System.out.println("景點 : " + name);
			System.out.println("地址"+address);
			System.out.println("電話"+tel);
			System.out.println("經度"+px);
			System.out.println("緯度"+py);
			System.out.println("描述"+tip);
			k++;
			System.out.println(k);
			//5132
			System.out.println("============================");
			GetOpenData_WithJSON3  dao = new GetOpenData_WithJSON3();
			
			SpotListVO spotListVO1 = new SpotListVO();
			spotListVO1.setSpotName(name);
			spotListVO1.setCityNo("CIT0006");
			spotListVO1.setLocation(address);
			spotListVO1.setSpotType(1);
			spotListVO1.setSpotStatus(1);
			spotListVO1.setTel(tel);
			spotListVO1.setSpotLati(new Double(py));
			spotListVO1.setSpotLong(new Double(px));
			spotListVO1.setSpotDetail(tip);
			dao.insert(spotListVO1);

		}
	}

	@Override
	public void insert(SpotListVO spotListVO) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(INSERT_STMT);
			
			pstmt.setString(1, spotListVO.getSpotName());
			pstmt.setString(2, spotListVO.getCityNo());
			pstmt.setString(3, spotListVO.getLocation());
			pstmt.setInt(4, spotListVO.getSpotType());
			pstmt.setBytes(5, spotListVO.getSpotPhoto());
			pstmt.setInt(6, spotListVO.getSpotStatus());
			pstmt.setString(7, spotListVO.getTel());
			pstmt.setDouble(8, spotListVO.getSpotLati());
			pstmt.setDouble(9, spotListVO.getSpotLong());
			pstmt.setString(10, spotListVO.getSpotDetail());
			
			pstmt.executeUpdate();
		} catch(ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver." + e.getMessage());
		} catch(SQLException se) {
			throw new RuntimeException("A database error occured." + se.getMessage());
		} finally {
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch(SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if(con != null) {
				try {
					con.close();
				} catch(Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}
		
	}


}

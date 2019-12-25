<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<html>
<head>
<title>EL02</title>
</head>
<body>
<h2>比較</h2>
<blockquote>
<u><b>數值比較</b></u>
<code>
<table border="1">
<tr><th>      EL的寫法    </th><th>      結果       </th></tr>
<tr><td>\${1 &lt; 2}      </td><td>${1 < 2}         </td></tr>
<tr><td>\${1 lt 2}        </td><td>${1 lt 2}        </td></tr>
<tr><td>\${1 &gt; (4/2)}  </td><td>${1 > (4/2)}     </td></tr>
<tr><td>\${4.0 &gt;= 3}   </td><td>${4.0 >= 3}      </td></tr>
<tr><td>\${4.0 ge 3}      </td><td>${4.0 ge 3}      </td></tr>
<tr><td>\${4 &lt;= 3}     </td><td>${4 <= 3}        </td></tr>
<tr><td>\${4 le 3}        </td><td>${4 le 3}        </td></tr>
<tr><td>\${100.0 == 100}  </td><td>${100.0 == 100}  </td></tr>
<tr><td>\${100.0 eq 100}  </td><td>${100.0 eq 100}  </td></tr>
<tr><td>\${(10*10) != 100}</td><td>${(10*10) != 100}</td></tr>
<tr><td>\${(10*10) ne 100}</td><td>${(10*10) ne 100}</td></tr>
<tr><td>\${empty ""}                </td><td>${empty ""}      </td></tr>
<tr><td>\${empty " "}               </td><td>${empty " "}      </td></tr>
<tr><td>\${ not empty " "}         </td><td>${not empty ""}      </td></tr>
<tr><td>   									</td><td>      </td></tr>
<tr><td>\${empty ""}      			</td><td>${empty ""}      </td></tr>
<tr><td>\${empty ""}      			</td><td>${empty ""}      </td></tr>
<tr><td>\${empty ""}     				 </td><td>${empty ""}      </td></tr>
</table>
</code>

<br>
<u><b>文字比較</b></u>
<code>
<table border="1">
<tr><th>       EL的寫法     </th><th>      結果      </th></tr>
<tr><td>\${'a' &lt; 'b'}    </td><td>${'a' < 'b'}    </td></tr>
<tr><td>\${'hip' &gt; 'hit'}</td><td>${'hip' > 'hit'}</td></tr>
<tr><td>\${'4' &gt; 3}      </td><td>${'4' > 3}      </td></tr>
</table>
</code>
</blockquote>
</body>
</html>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><script type="text/javascript">var x_wk = {};</script><script type="text/javascript" src="/nonauth/getTranslations.js.php?v=5136"></script><script type="text/javascript" src="/nonauth/getLoginType.js.php?v=5136&dest=aHR0cDovL21lbHBhLm1pbGtib3gubmV0L3BhY2thZ2VzL3JzcGVjLW1vZGUtcmVhZG1lLnR4dA%3D%3D&host=MTcyLjMwLjIuMjggMjM2MGY4MDAxNTU2YWJiZjhlNjkxOTBkNDI2NjA0MzI%3D"></script>
<title></title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
<script type="text/javascript">
var x_5kk = true;
var kerio = {lib:{}};
</script>
<script type="text/javascript" src="defaults.js?v=5136"></script>
<!--generatedDefaults.js-->
<script type="text/javascript">
var x_32x = x_wi.x_wp
? x_wi.x_wp + '/int/login/index.js?v=5136'
: '/weblib/int/login/index.js?v=5136';
document.write('<script type="text/javascript" src="' + x_32x + '"><\/script>');
</script>
<script type="text/javascript">
kerio.login.x_5kl({
x_5km: undefined === kerio.engine ? [null] : kerio.engine.acceptedLanguages,
x_3mj: undefined === kerio.engine ? ["cs", "de", "en", "es", "fr", "hr", "hu", "it", "ja", "nl", "pl", "pt", "ru", "sk", "sv", "zh"] : x_wi.x_1ji
});
</script>
<link rel="stylesheet" href="../nonauth/style/pda.css" media="all" type="text/css" /></head>
<body>
<noscript><div id="upSpacer"></div><div class="contentDiv"><table width="230" cellpadding="0" cellspacing="0" class="info" align="center"><tr><td><b>You have to login to the firewall to access the Web service.</b><br><br></td></tr></table><form style="margin: 0pt;" method="post" action="/internal/dologin.php?dest=aHR0cDovL21lbHBhLm1pbGtib3gubmV0L3BhY2thZ2VzL3JzcGVjLW1vZGUtcmVhZG1lLnR4dA%3D%3D&host=MTcyLjMwLjIuMjggMjM2MGY4MDAxNTU2YWJiZjhlNjkxOTBkNDI2NjA0MzI%3D"><table width="230" cellpadding="4" align="center"><tr bgcolor="#e73a27"><td><img src="../nonauth/gfx/control-logo.gif?v=5136" width="200" alt="" ></td></tr><tr><td class="label">Username</td></tr><tr><td><input type="text" name="kerio_username" size="30"  ></td></tr><tr><td class="label">Password</td></tr><tr><td><input type="password" name="kerio_password" size="30" ></td></tr><tr><td><input type="submit" value="Login"></td></tr></table></form><table width="230" cellpadding="0" cellspacing="0" class="details" align="center"><tr><td><br>Depending on the firewall restriction rules, you may not be allowed to access some web pages.


									<br><br>


									Privacy notice: Firewall administrator could configure the firewall to monitor web pages that you (or other users) are visiting. Visited pages are stored in log files on the firewall.</td></tr></table></div></noscript>
<!-- "up-spacer"creates white space over login dialog -->
<div id="up-spacer"></div>
<div id="upper-message-container"></div>
<div id="main-container" style='visibility: hidden;'>
<!-- used only in admins -->
<div id="admin-icon"></div>
<!-- "top" part of buble image -->
<div id="top"></div>
<div id="body-container">
<!-- Text inside H will be displayed only when CSS style are not available  -->
<div id="logo"><h1 id="product-name"></h1></div>
<div id="error-message">
<!-- Table is used because we want empty column (with warning icon on bottom)and text in left column  -->
<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
<td valign="top" width="32"><div id="warning-icon"></div></td>
<td valign="middle"><div id="error-message-text"></div></td>
</tr>
</table>
</div>
<form name="container" action="/server/login" method="post" id="container">
<!-- ALL browsers:  "text-align:center" doesn't center hidden and than displayed element - excuse for validators -->
					<table align="center" width="248">
                    	<tr>
                        	<td id="username-container"></td>
                        </tr>
                        <tr>
                        	<td id="password-container"></td>
                        </tr>
					</table>
					<!-- place to add product specific fields, e.g. use webmail mini -->
					<div id="input-fields"></div>

					<!-- Table allows create two-column layout simply and without problems	-->
					<table align="center" border="0"  cellpadding="0" cellspacing="0" style ="width:255px;">
						<tr>
							<td align="left" valign="top" id="loginbutton-container"></td>
							<td align="right">
								<table  border="0" cellpadding="0" cellspacing="0" >
                    				<tr>
										<!-- checkbox is in table alone because, this is only one way how
											correctly align checkboxes in all browsers (except IE6) vertically
										-->
										<td valign="bottom" id="remembercheckbox-container"></td>
										<td valign="bottom" style="white-space: nowrap;" align="left" id="rememberlabel-container"></td>
									</tr>
								</table>
							</td>
                        </tr>
					</table>
					<!--
						Empty element at this position causes broken design of login dialog in IE7,
						therefore &nbsp; is used as content of this div and this element has to be hidden.
					 -->
                    <div id="hiddenfields-container">&nbsp;</div>
				</form>
			</div>
			<!-- "bottom" part of buble image -->
			<div id="bottom"></div>
    	</div>
		<div id="lower-message-container"></div>
		<div id="sso-container"></div>
		<script type="text/javascript">
			// Input elements cannot be created in onload event handler,
			// because password autocomplete is not working in FF.

			if (document.getElementById) {
				x_5kk = false;

				var
					x_1jd,
					x_5kn = kerio.engine ? kerio.engine.sso || {} : {};

				try {
					x_1jd = {
						x_5ko: undefined === kerio.engine ? false  : x_5kn.isEnabled,
						x_5kp : undefined === kerio.engine ? '' : x_5kn.probeUrl,
						x_5kq : undefined === kerio.engine ? '' : x_5kn.solveUrl
					};
				}
				catch (x_14x) {
					// only catch exception caused by unreplaced strings for SSO
				};

				kerio.login.x_5kr.x_5ks(x_1jd);

				if (undefined === window.onload) {  // Windows Mobile < 6.5
					kerio.login.x_5kr.x_y0();
				}
			}
		</script>
	</body>
	<script type="text/javascript">
		if (x_5kk) {
			alert('Unsupported browser!');  // e.g. Windows Mobile 2003
		}
	</script>
</html>

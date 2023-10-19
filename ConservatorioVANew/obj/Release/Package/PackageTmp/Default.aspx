<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ConservatorioVANew.Default" %>

<!DOCTYPE html>
<!--
Template Name: Metronic - Bootstrap 4 HTML, React, Angular 11 & VueJS Admin Dashboard Theme
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Dribbble: www.dribbble.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase: https://1.envato.market/EA4JP
Renew Support: https://1.envato.market/EA4JP
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
-->
<html lang="en">
	<!--begin::Head-->
	<head><base href="../../../">
		<meta charset="utf-8" />
		<title>Login</title>
		<meta name="description" content="Login page example" />
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
		<link rel="canonical" href="https://keenthemes.com/metronic" />
		<!--begin::Fonts-->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />
		<!--end::Fonts-->
		<!--begin::Page Custom Styles(used by this page)-->
		<link href="assets/css/pages/login/login-1.css" rel="stylesheet" type="text/css" />
		<!--end::Page Custom Styles-->
		<!--begin::Global Theme Styles(used by all pages)-->
		<link href="assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/custom/prismjs/prismjs.bundle.css" rel="stylesheet" type="text/css" />
		<link href="assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Global Theme Styles-->
		<!--begin::Layout Themes(used by all pages)-->
		<!--end::Layout Themes-->
		<link rel="shortcut icon" href="assets/media/logos/favicon.ico" />
		<script src="assets/js/sweetalert.js"></script>
        <script type="text/javascript">
			function Exito() {
                Swal.fire({
                    icon: 'success',
					title: 'Excelente',
                    text: "Bienvenido al conservatorio!",
                    showConfirmButton: false,
                    timer: 8000
                })
			}

            function RegistroExitoso() {
                swal({
                    title: "Excelente!",
                    text: "Te registraste en el conservatorio!",
                    icon: "success",
                    confirmButtonText: `OK`,
                })
			}

			function ErrorSesion() {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'El usuario y/o contraseña son incorrectos!',
                })
			}

            function ErrorDatos(error) {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: error,
                })
            }
        </script>
	</head>
	<!--end::Head-->
	<!--begin::Body-->
	<body id="kt_body" class="quick-panel-right demo-panel-right offcanvas-right header-fixed header-mobile-fixed subheader-enabled aside-enabled aside-static page-loading">
		<!--begin::Main-->
		<div class="d-flex flex-column flex-root">
			<!--begin::Login-->
			<div class="login login-1 login-signin-on d-flex flex-column flex-lg-row flex-column-fluid bg-white" id="kt_login">
				<!--begin::Aside-->
				<div class="login-aside d-flex flex-column flex-row-auto" style="background-color: #F2C98A;">
					<!--begin::Aside Top-->
					<div class="d-flex flex-column-auto flex-column pt-lg-40 pt-15">
						<!--begin::Aside header-->
						<a href="#" class="text-center mb-10">
							<img src="assets/media/logos/logo6.png" class="max-h-70px" alt="" />
						</a>
						<!--end::Aside header-->
						<!--begin::Aside title-->
						<h3 class="font-weight-bolder text-center font-size-h4 font-size-h1-lg" style="color: #986923;">Conservatorio Mozart
						<br />un nido de amor y música</h3>
						<!--end::Aside title-->
					</div>
					<!--end::Aside Top-->
					<!--begin::Aside Bottom-->
					<div class="aside-img d-flex flex-row-fluid bgi-no-repeat bgi-position-y-bottom bgi-position-x-center" style="background-image: url(assets/media/svg/illustrations/login-visual-4.svg)"></div>
					<!--end::Aside Bottom-->
				</div>
				<!--begin::Aside-->
				<!--begin::Content-->
				<div class="login-content flex-row-fluid d-flex flex-column justify-content-center position-relative overflow-hidden p-7 mx-auto">
					<!--begin::Content body-->
					<div class="d-flex flex-column-fluid flex-center">
						<!--begin::Signin-->
						<form runat="server" >
							<div class="login-form login-signin">
								<!--begin::Form-->
								<div class="form" novalidate="novalidate" id="kt_login_signin_form">
									<!--begin::Title-->
									<div class="pb-13 pt-lg-0 pt-5">
										<h3 class="font-weight-bolder text-dark font-size-h4 font-size-h1-lg">Bienvenido a Conservatorio Mozart Villa Allende</h3>
										<span class="text-muted font-weight-bold font-size-h4">Sos nuevo aquí?
										<a href="javascript:;" id="kt_login_signup" class="text-primary font-weight-bolder">Crear una cuenta</a></span>
									</div>
									<!--begin::Title-->
									<!--begin::Form group-->
									<div class="form-group">
										<label class="font-size-h6 font-weight-bolder text-dark">Email</label>
										<input runat="server" id="email" class="form-control form-control-solid h-auto py-6 px-6 rounded-lg" type="text" name="usuario" autocomplete="off" />
									</div>
									<!--end::Form group-->
									<!--begin::Form group-->
									<div class="form-group">
										<div class="d-flex justify-content-between mt-n5">
											<label class="font-size-h6 font-weight-bolder text-dark pt-5">Contraseña</label>
											<a href="javascript:;" class="text-primary font-size-h6 font-weight-bolder text-hover-primary pt-5" id="kt_login_forgot">Olvidaste tu contraseña?</a>
										</div>
										<input runat="server" id="pass" class="form-control form-control-solid h-auto py-6 px-6 rounded-lg" type="password" name="contraseña" autocomplete="off" />
									</div>
									<!--end::Form group-->
									<!--begin::Action-->
									<div class="pb-lg-0 pb-5">
										<asp:Button runat="server" Text="Ingresar" onclick="kt_login_signin_submit_Click" id="brnSubmit" class="btn btn-primary btn-block font-weight-bolder font-size-h6 px-8 py-4 my-3 mr-3" />
										<button runat="server" onclick="" type="button" id="kt_login_signin_submit" class="btn btn-primary btn-block font-weight-bolder font-size-h6 px-8 py-4 my-3 mr-3" visible="false">Ingresar</button>
									</div>
									<!--end::Action-->
								</div>
								<!--end::Form-->
							</div>
							<!--end::Signin-->
							<!--begin::Signup-->
							<div class="login-form login-signup">
								<!--begin::Form-->
								<div class="form" novalidate="novalidate" id="kt_login_signup_form">
									<!--begin::Title-->
									<div class="pb-13 pt-lg-0 pt-5">
										<h3 class="font-weight-bolder text-dark font-size-h4 font-size-h1-lg">Registrate!</h3>
										<p class="text-muted font-weight-bold font-size-h4">Ingresa tus datos para crear una cuenta</p>
									</div>
									<!--end::Title-->
									<!--begin::Form group-->
									<div class="form-group">
										<input runat="server" id="txtNombrePrincipal" class="form-control form-control-solid h-auto py-6 px-6 rounded-lg font-size-h6" type="text" placeholder="Nombre del padre/madre" name="nombrePadre" autocomplete="off" />
									</div>
									<!--end::Form group-->
									<!--begin::Form group-->
									<div class="form-group">
										<input runat="server" id="txtNombreAlumno" class="form-control form-control-solid h-auto py-6 px-6 rounded-lg font-size-h6" type="text" placeholder="Nombre del alumno" name="nombreAlumno" autocomplete="off" />
									</div>
									<!--end::Form group-->
									<!--begin::Form group-->
									<div class="form-group">
										<input runat="server" id="txtEmail" class="form-control form-control-solid h-auto py-6 px-6 rounded-lg font-size-h6" type="email" placeholder="Email" name="email" autocomplete="off" />
									</div>
									<!--end::Form group-->
									<!--begin::Form group-->
									<div class="form-group">
										<input runat="server" id="txtContraseña" class="form-control form-control-solid h-auto py-6 px-6 rounded-lg font-size-h6" type="password" placeholder="Constraseña" name="password" autocomplete="off" />
									</div>
									<!--end::Form group-->
									<!--begin::Form group-->
									<div class="form-group">
										<input runat="server" id="txtRepetirContraseña" class="form-control form-control-solid h-auto py-6 px-6 rounded-lg font-size-h6" type="password" placeholder="Confirmar contraseña" name="cpassword" autocomplete="off" />
									</div>
									<!--end::Form group-->
									<!--begin::Form group-->
								
									<!--end::Form group-->
									<!--begin::Form group-->
									<div class="form-group d-flex flex-wrap pb-lg-0 pb-3">
										<asp:Button runat="server" ID="btnRegistrar" Text="Registrar" class="btn btn-primary font-weight-bolder font-size-h6 px-8 py-4 my-3 mr-4" OnClick="kt_login_signup_submit_Click"/>
										<%--<button type="button" id="kt_login_signup_submit" class="btn btn-primary font-weight-bolder font-size-h6 px-8 py-4 my-3 mr-4">Registrar</button>--%>
										<button type="button" id="kt_login_signup_cancel" class="btn btn-light-primary font-weight-bolder font-size-h6 px-8 py-4 my-3">Cancelar</button>
									</div>
									<!--end::Form group-->
								</div>
								<!--end::Form-->
							</div>
							<!--end::Signup-->
							<!--begin::Forgot-->
							<div class="login-form login-forgot">
								<!--begin::Form-->
								<div class="form" novalidate="novalidate" id="kt_login_forgot_form">
									<!--begin::Title-->
									<div class="pb-13 pt-lg-0 pt-5">
										<h3 class="font-weight-bolder text-dark font-size-h4 font-size-h1-lg">Olvidaste tu contraseña?</h3>
										<p class="text-muted font-weight-bold font-size-h4">Ingresa tu mail para reestablecer tu contraseña</p>
									</div>
									<!--end::Title-->
									<!--begin::Form group-->
									<div class="form-group">
										<input class="form-control form-control-solid h-auto py-6 px-6 rounded-lg font-size-h6" type="email" placeholder="Email" name="email" autocomplete="off" />
									</div>
									<!--end::Form group-->
									<!--begin::Form group-->
									<div class="form-group d-flex flex-wrap pb-lg-0">
										<button type="button" id="kt_login_forgot_submit" class="btn btn-primary font-weight-bolder font-size-h6 px-8 py-4 my-3 mr-4">Enviar</button>
										<button type="button" id="kt_login_forgot_cancel" class="btn btn-light-primary font-weight-bolder font-size-h6 px-8 py-4 my-3">Cancelar</button>
									</div>
									<!--end::Form group-->
								</div>
								<!--end::Form-->
							</div>
							<!--end::Forgot-->
						</form>
					</div>					
					<!--end::Content body-->
					<!--begin::Content footer-->
					<div class="d-flex justify-content-lg-start justify-content-center align-items-end py-7 py-lg-0">
						<div class="text-dark-50 font-size-lg font-weight-bolder mr-10">
							<span class="mr-1">2021©</span>
							<a href="http://keenthemes.com/metronic" target="_blank" class="text-dark-75 text-hover-primary">Conservatorio Mozart</a>
						</div>
						<a href="#" class="text-primary font-weight-bolder font-size-lg">Terms</a>
						<a href="#" class="text-primary ml-5 font-weight-bolder font-size-lg">Plans</a>
						<a href="#" class="text-primary ml-5 font-weight-bolder font-size-lg">Contact Us</a>
					</div>
					<!--end::Content footer-->
				</div>
				<!--end::Content-->
			</div>
			<!--end::Login-->
		</div>
		<!--end::Main-->
		<script>var HOST_URL = "https://preview.keenthemes.com/metronic/theme/html/tools/preview";</script>
		<!--begin::Global Config(global config for global JS scripts)-->
		<script>var KTAppSettings = { "breakpoints": { "sm": 576, "md": 768, "lg": 992, "xl": 1200, "xxl": 1200 }, "colors": { "theme": { "base": { "white": "#ffffff", "primary": "#6993FF", "secondary": "#E5EAEE", "success": "#1BC5BD", "info": "#8950FC", "warning": "#FFA800", "danger": "#F64E60", "light": "#F3F6F9", "dark": "#212121" }, "light": { "white": "#ffffff", "primary": "#E1E9FF", "secondary": "#ECF0F3", "success": "#C9F7F5", "info": "#EEE5FF", "warning": "#FFF4DE", "danger": "#FFE2E5", "light": "#F3F6F9", "dark": "#D6D6E0" }, "inverse": { "white": "#ffffff", "primary": "#ffffff", "secondary": "#212121", "success": "#ffffff", "info": "#ffffff", "warning": "#ffffff", "danger": "#ffffff", "light": "#464E5F", "dark": "#ffffff" } }, "gray": { "gray-100": "#F3F6F9", "gray-200": "#ECF0F3", "gray-300": "#E5EAEE", "gray-400": "#D6D6E0", "gray-500": "#B5B5C3", "gray-600": "#80808F", "gray-700": "#464E5F", "gray-800": "#1B283F", "gray-900": "#212121" } }, "font-family": "Poppins" };</script>
		<!--end::Global Config-->
		<!--begin::Global Theme Bundle(used by all pages)-->
		<script src="assets/plugins/global/plugins.bundle.js"></script>
		<script src="assets/plugins/custom/prismjs/prismjs.bundle.js"></script>
		<script src="assets/js/scripts.bundle.js"></script>
		<!--end::Global Theme Bundle-->
		<!--begin::Page Scripts(used by this page)-->
		<script src="assets/js/pages/custom/login/login-general.js"></script>
		<!--end::Page Scripts-->
	</body>
	<!--end::Body-->
</html>
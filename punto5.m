load interpolacionLineal1D.m;
load interpolacionLineal2D.m;
load interpolacionLineal_2D.m;

iLenaLD = load("Imagen_Lena_LD.mat").XLD;
iLenaHD = load("Imagen_Lena_HD.mat").XHD;
iTextoLD = load("Imagen_Texto_LD.mat").XLD;
iTextoHD = load("Imagen_texto_HD.mat").XHD;

iResultLenaSpline = interpolacionLineal_2D(iLenaLD, 'spline');
iResultLenaCubic = interpolacionLineal_2D(iLenaLD, 'cubic');

iResultTextoSpline = interpolacionLineal_2D(iTextoLD, 'spline');
iResultTextoCubic = interpolacionLineal_2D(iTextoLD, 'cubic');

errSplineTexto = norm(iTextoHD - iResultTextoSpline) / norm(iTextoHD);
errCubicTexto = norm(iTextoHD - iResultTextoCubic) / norm(iTextoHD);

errSplineLena = norm(iLenaHD - iResultLenaSpline) / norm(iLenaHD);
errCubicLena = norm(iLenaHD - iResultLenaCubic) / norm(iLenaHD);

disp('El error utilizando el metodo spline para la imagen de Lena es: ');
errSplineLena
disp('El error utilizando el metodo cubic para la imagen de Lena es: ');
errCubicLena

disp('El error utilizando el metodo spline para la imagen del texto es: ');
errSplineTexto
disp('El error utilizando el metodo cubic para la imagen del texto es: ');
errCubicTexto




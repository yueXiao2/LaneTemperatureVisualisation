landtemp = importfile(urlwrite("https://neo.sci.gsfc.nasa.gov/servlet/RenderData?si=1785058&cs=rgb&format=CSV&width=360&height=180","MOD_LSTD_M_2020-02-01_rgb_360x180.csv"), [1, Inf]);

temp1 = landtemp;
temp1(temp1 == 99999) = NaN;
surf(flipud(temp1));
colorbar;
figure;
surf(flipud(temp1));
colorbar;
view(2);
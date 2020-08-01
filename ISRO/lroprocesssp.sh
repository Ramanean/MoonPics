file=$1.IMG
lronac2isis from=$1.IMG to=$1_lev0.cub
spiceinit from=$1_lev0.cub
lronaccal from=$1_lev0.cub to=$1_lev1.cub;
rm -f $1_lev0.cub
lronacecho from=$1_lev1.cub to=$1_lev1echo.cub;
rm -f $1_lev1.cub
#cam2map from=$1_lev1echo.cub map=../southpole.map to=$1cam.cub
#rm -f $1_lev1echo.cub
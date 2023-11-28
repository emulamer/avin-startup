#!/system/bin/sh

if [ $1 -eq 1 ]; then
    if [ "$(getprop ro.product.device)" == "pigeon_wm170_gls" ] && [ "$(unrd product_type)" != "wm150_gls" ]; then
        echo "Unsupported, only works in DJI digital system mode!";
        exit 0;
    fi
    setprop dji.factory.avin_test 1
    echo "Enabled AV IN prop";
elif [ $1 -eq 0 ]; then
    setprop dji.factory.avin_test 0
    echo "Disabled AV IN prop";
else
    echo "Invalid param, pass 1 or 0";
fi


/**
 * Created by wangyihua on 2016/6/12.
 */
$(function () {
    var per = parseInt($("#price").text());
    $("#add").click(function () {
        if (parseInt($("#num").text()) >= 0) {
            $("#num").text(parseInt($("#num").text()) + 1);
            $("#price").text((per * parseInt($("#num").text())).toFixed(2));
        }
    });
    $("#cut").click(function () {
        if (parseInt($("#num").text()) >= 2) {
            $("#num").text(parseInt($("#num").text()) - 1);
            $("#price").text((per * parseInt($("#num").text())).toFixed(2));
        }
    });

    function swipe() {
        var count = 0;
        var pro_info = [
            {
            name: "标配",
            price: "2299.00"
            },
            {
                name: "遥控器",
                price: "60.00"
            },
            {
                name: "携行包",
                price: "75.00"
            }];
        //初始化第一张照片以及其相关信息
        $(".control_group li span:eq(" + count + ")").css({"background-color": "red"});
        $(".swipe li:eq(" + count + ")").css({"opacity": "1"});
        $("#version span").text(pro_info[count].name);
        $("#price").text(pro_info[count].price);
        //左右箭头点击跳转
        $(".btn_right").click(function () {
            if (count < 2) {
                count++;
                //圆圈颜色改变
                $(".control_group li span").css({"background-color": "#ddd"});
                $(".control_group li span:eq(" + count + ")").css({"background-color": "red"});
                //显示相应产品图片以及相关信息
                $(".swipe li").animate({"opacity": "0"}, 500);
                $(".swipe li:eq(" + count + ")").animate({"opacity": "1"}, 800);
                $("#version span").text(pro_info[count].name);
                $("#price").text(pro_info[count].price);
                per = parseInt($("#price").text());  //重新获取价格

            }
        });
        $(".btn_left").click(function () {
            if (count > 0) {
                count--;
                //圆圈颜色改变
                $(".control_group li span").css({"background-color": "#ddd"});
                $(".control_group li span:eq(" + count + ")").css({"background-color": "red"});
                //显示相应产品图片
                $(".swipe li").animate({"opacity": "0"}, 500);
                $(".swipe li:eq(" + count + ")").animate({"opacity": "1"}, 800);
                $("#version span").text(pro_info[count].name);
                $("#price").text(pro_info[count].price);
                per = parseInt($("#price").text());  //重新获取价格
            }
        });

        //圆圈点击事件
        $(".control_group li span").click(function () {
            //改变圆圈颜色
            $(".control_group li span").css({"background-color": "#ddd"});
            $(this).css({"background-color": "red"});
            //显示相应产品图片
            count = $(this).attr("data-id");
            $(".swipe li").animate({"opacity": "0"}, 500);
            $(".swipe li:eq(" + count + ")").animate({"opacity": "1"}, 800);
            $("#version span").text(pro_info[count].name);
            $("#price").text(pro_info[count].price);
            per = parseInt($("#price").text());  //重新获取价格
        });
    }
    swipe();
});
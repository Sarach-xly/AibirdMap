package com.aibird.model.entity;

import java.util.Date;

public class Aibird {
    private Integer aibirdid;

    private String userphone;

    private String type;

    private String name;

    private String startx;

    private String starty;

    private String endx;

    private String endy;

    private String realendx;

    private String realendy;

    private String createtime;

    public Integer getAibirdid() {
        return aibirdid;
    }

    public void setAibirdid(Integer aibirdid) {
        this.aibirdid = aibirdid;
    }

    public String getUserphone() {
        return userphone;
    }

    public void setUserphone(String userphone) {
        this.userphone = userphone == null ? null : userphone.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getStartx() {
        return startx;
    }

    public void setStartx(String startx) {
        this.startx = startx == null ? null : startx.trim();
    }

    public String getStarty() {
        return starty;
    }

    public void setStarty(String starty) {
        this.starty = starty == null ? null : starty.trim();
    }

    public String getEndx() {
        return endx;
    }

    public void setEndx(String endx) {
        this.endx = endx == null ? null : endx.trim();
    }

    public String getEndy() {
        return endy;
    }

    public void setEndy(String endy) {
        this.endy = endy == null ? null : endy.trim();
    }

    public String getRealendx() {
        return realendx;
    }

    public void setRealendx(String realendx) {
        this.realendx = realendx == null ? null : realendx.trim();
    }

    public String getRealendy() {
        return realendy;
    }

    public void setRealendy(String realendy) {
        this.realendy = realendy == null ? null : realendy.trim();
    }

	public String getCreatetime() {
		return createtime;
	}

	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}

    
}
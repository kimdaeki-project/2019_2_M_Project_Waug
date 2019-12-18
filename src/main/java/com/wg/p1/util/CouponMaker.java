package com.wg.p1.util;

import java.util.UUID;

public class CouponMaker {

	public String makeCoupon(int city_num) {
		System.out.println("couponMaker city_num : "+city_num);
		String coupon=city_num+UUID.randomUUID().toString();
		coupon=coupon.substring(0, 9);
		return coupon;
	}
}

import 'package:cozy_app/models/city.dart';
import 'package:cozy_app/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CityCard extends StatelessWidget {
  final City city;

  CityCard(this.city);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18.w),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(18.w),
        child: Container(
          height: 175.r,
          width: 140.r,
          color: Colors.black12.withOpacity(0.06),
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    city.imageUrl,
                    height: 119.r,
                    fit: BoxFit.cover,
                  ),
                  if (city.isFavorite)
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 50.r,
                        height: 30.r,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(36.w),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 6.w),
                          child: Center(
                            child: Image.asset(
                              'assets/images/icon_star.png',
                              width: 22.r,
                              height: 22.r,
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              Expanded(
                child: Center(
                  child: Text(
                    city.name,
                    style: titleTextStyle.copyWith(
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

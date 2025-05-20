import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Flag_Card extends StatelessWidget {
  const Flag_Card({
    super.key,
    required this.ImageLink,
    required this.CountryName,
    required this.Currency,
  });

  final ImageLink;
  final CountryName;
  final Currency;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 6,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.r),
                topRight: Radius.circular(12.r),
              ),
              child: Image.network(
                ImageLink,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),
          Expanded(
              child: Text(
            "Country: ${CountryName}",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          )),
          Expanded(
              child: Text(
            "Currency: ${Currency}",
            style: TextStyle(color: Colors.black),
          )),
          Expanded(
            child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("See details"),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 3.sp,
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}

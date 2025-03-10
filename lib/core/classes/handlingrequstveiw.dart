import 'dart:ui';
import 'package:alwathba/core/classes/stutusconntection.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shimmer/shimmer.dart';

import '../constant/imageasset.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;

  const HandlingDataView({
    super.key,
    required this.statusRequest,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child: Lottie.asset(AppImage.loading,
                width: 200, height: 200, repeat: true),
          )
        : statusRequest == StatusRequest.offlinefailure
            ? Center(
                child: Lottie.asset(AppImage.offline,
                    width: 250, height: 250, repeat: true),
              )
            : statusRequest == StatusRequest.serverfailure
                ? Center(
                    child: Lottie.asset(AppImage.servererror,
                        width: 250, height: 250, repeat: true),
                  )
                : statusRequest == StatusRequest.failure
                    ? Center(
                        child: Lottie.asset(AppImage.failure,
                            width: 250, height: 250, repeat: true),
                      )
                    : widget;
  }
}

class HandlingDataViewShimmer extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  final Widget shimmerwidget;

  const HandlingDataViewShimmer({
    super.key,
    required this.statusRequest,
    required this.widget,
    required this.shimmerwidget,
  });

  @override
  Widget build(BuildContext context) {
    if (statusRequest == StatusRequest.loading) {
      return Center(
        child: Shimmer.fromColors(
          baseColor: Colors.grey[400]!,
          highlightColor: Colors.grey[500]!,
          child: shimmerwidget,
        ),
      );
    } else if (statusRequest == StatusRequest.offlinefailure) {
      return  Center(
    child: Lottie.asset(AppImage.offline,
    width: 250, height: 250));

    } else if (statusRequest == StatusRequest.serverfailure) {
      return Center(
          child: Lottie.asset(AppImage.servererror,
              width: 250, height: 250));
    } else if (statusRequest == StatusRequest.failure) {
      return Center(
          child: Lottie.asset(AppImage.servererror,
              width: 250, height: 250)
      );
    } else {
      return widget;
    }

  }
}

class HandlingDataRequest extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;

  const HandlingDataRequest(
      {super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child: Lottie.asset(AppImage.loading,
                width: 200, height: 200, repeat: true))
        : statusRequest == StatusRequest.offlinefailure
            ? Center(
                child: Lottie.asset(AppImage.offline,
                    width: 250, height: 250))
            : statusRequest == StatusRequest.serverfailure
                ? Center(
                    child: Lottie.asset(AppImage.servererror,
                        width: 250, height: 250))
                : widget;
  }
}

class CoustomHandlingData extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;

  const CoustomHandlingData(
      {super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Stack(children: [
            widget,
            Stack(children: [
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Container(
                  color: Colors.black.withOpacity(0.1),
                ),
              ),
              Center(
                  child: Lottie.asset(AppImage.loading,
                      width: 200, height: 200, repeat: true)),
            ]),
          ])
        : statusRequest == StatusRequest.offlinefailure
            ? Center(
                child: Lottie.asset(AppImage.offline,
                    width: 250, height: 250))
            : statusRequest == StatusRequest.serverfailure
                ? Center(
                    child: Lottie.asset(AppImage.servererror,
                        width: 250, height: 250))
                : widget;
  }
}

class CoustomDotedHandlingData extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;

  const CoustomDotedHandlingData(
      {super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Stack(children: [
            widget,
            Stack(children: [
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Container(
                  color: Colors.black.withOpacity(0.2),
                ),
              ),
              Center(
                  child: Lottie.asset(AppImage.loading,
                      width: 200, height: 200, repeat: true)),
            ]),
          ])
        : statusRequest == StatusRequest.offlinefailure
            ? Center(
                child: Lottie.asset(AppImage.offline,
                    width: 250, height: 250))
            : statusRequest == StatusRequest.serverfailure
                ? Center(
                    child: Lottie.asset(AppImage.servererror,
                        width: 250, height: 250))
                : widget;
  }
}

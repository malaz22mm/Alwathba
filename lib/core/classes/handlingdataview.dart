import 'package:alwathba/core/classes/statuserequest.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HandlingDataView extends StatelessWidget {
  final StatuseRequest statuseRequest;
  final Widget widget;
  const HandlingDataView(
      {super.key, required this.statuseRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statuseRequest == StatuseRequest.loading
        ?  Center(
            child: Lottie.asset(ImageAsset.loading),
          )
        : statuseRequest == StatuseRequest.offlinefailure
            ?  Center(
                child: Lottie.asset(ImageAsset.offline),
              )
            : statuseRequest == StatuseRequest.serverfailure
                ?  Center(
                    child: Lottie.asset(ImageAsset.servererror),
                  )
                : statuseRequest == StatuseRequest.failure
                    ?  Center(
                        child: Lottie.asset(ImageAsset.failure),
                      )
                    : widget;
  }
}

class HandlingDataRequest extends StatelessWidget {
  final StatuseRequest statuseRequest;
  final Widget widget;
  const HandlingDataRequest(
      {super.key, required this.statuseRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statuseRequest == StatuseRequest.loading
        ?  Center(
            child: Lottie.asset(ImageAsset.loading),
          )
        : statuseRequest == StatuseRequest.offlinefailure
            ?  Center(
                child: Lottie.asset(ImageAsset.offline),
              )
            : statuseRequest == StatuseRequest.serverfailure
                ?  Center(
                    child: Lottie.asset(ImageAsset.servererror),
                  )
                : widget;
  }
}
class ImageAsset {
  static const String loading = 'assets/animations/loading.json';
  static const String offline = 'assets/animations/offline.json';
  static const String servererror = 'assets/animations/server_error.json';
  static const String failure = 'assets/animations/failure.json';
}

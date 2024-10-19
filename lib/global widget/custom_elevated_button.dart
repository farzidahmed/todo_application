import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

 import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

class custom_elevated_button extends StatefulWidget {
  const custom_elevated_button({
    super.key,
  });

  @override
  State<custom_elevated_button> createState() => _custom_elevated_buttonState();
}

class _custom_elevated_buttonState extends State<custom_elevated_button> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppsColors.tdwhite
        ),
        onPressed: (){
          Future.delayed(const Duration(seconds: 1), () {
            ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
          });
          const materialBanner = MaterialBanner(
            /// need to set following properties for best effect of awesome_snackbar_content
            elevation: 0,
            backgroundColor: Colors.transparent,
            forceActionsBelow: true,
            content: AwesomeSnackbarContent(
              title: 'Thank you!!',
              message:
              'You click cancel button ',

              /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
              contentType: ContentType.success,
              // to configure for material banner
              inMaterialBanner: true,
            ),
            actions: [SizedBox.shrink()],
          );

          ScaffoldMessenger.of(context)
            ..hideCurrentMaterialBanner()
            ..showMaterialBanner(materialBanner);

        }, child: const Text("Save"),),);
  }
}

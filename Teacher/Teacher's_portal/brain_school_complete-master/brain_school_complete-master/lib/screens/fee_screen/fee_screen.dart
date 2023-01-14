import 'package:brain_school/constants.dart';
import 'package:flutter/material.dart';

import 'data/fee_data.dart';
import 'widgets/fee_widgets.dart';

class FeeScreen extends StatelessWidget {
  const FeeScreen({Key? key}) : super(key: key);
  static String routeName = 'FeeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assignments Received'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: kTopBorderRadius,
                color: kOtherColor,
              ),
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.all(kDefaultPadding),
                  itemCount: fee.length,
                  itemBuilder: (context, int index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: kDefaultPadding),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(kDefaultPadding),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(kDefaultPadding),
                              ),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: kTextLightColor,
                                  blurRadius: 2.0,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                FeeDetailRow(
                                  title: 'Assignment  ',
                                  statusValue: fee[index].receiptNo,
                                ),
                                SizedBox(
                                  height: kDefaultPadding,
                                  child: Divider(
                                    thickness: 1.0,
                                  ),
                                ),
                                FeeDetailRow(
                                  title: 'Name - ',
                                  statusValue: '',
                                ),
                                sizedBox,
                                FeeDetailRow(
                                  title: 'Subject',
                                  statusValue: '',
                                ),
                                sizedBox,
                                FeeDetailRow(
                                  title: 'Due Date - 15/02/2023', statusValue: '',

                                ),
                                sizedBox,
                                SizedBox(
                                  height: kDefaultPadding,
                                  child: Divider(
                                    thickness: 1.0,
                                  ),
                                ),
                                // FeeDetailRow(
                                //   title: '',
                                //   statusValue: fee[index].totalAmount,
                                // ),
                              ],
                            ),
                          ),
                          // FeeButton(
                          //     title: fee[index].btnStatus,
                          //     iconData: fee[index].btnStatus == 'Paid'
                          //         ? Icons.download_outlined
                          //         : Icons.arrow_forward_outlined,
                          //     onPress: () {})
                        ],
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}

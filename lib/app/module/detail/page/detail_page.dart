import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttermart/app/module/detail/page/components/remove_add_custom.dart';
import 'package:fluttermart/app/module/widgets/btn_custom.dart';
import 'package:fluttermart/app/module/widgets/star_custom.dart';
import 'package:fluttermart/app/utils/custom_color.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  // @override
  // void initState() {
  //   super.initState();
  //   // Adiciona um callback que será chamado após o término do primeiro frame.
  //   WidgetsBinding.instance.addPostFrameCallback((_) {
  //     _showBottomSheet();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.backgroundColor,
      body: Container(
        // padding: const EdgeInsets.symmetric(horizontal: 24),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/card/item1.png'),
            // fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 48),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Container(
                    height: 24,
                    width: 24,
                    padding: const EdgeInsets.only(
                      left: 7,
                    ),
                    decoration: BoxDecoration(
                      color: CustomColor.orange,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 14,
                      color: CustomColor.backgroundColor,
                    ),
                  ),
                  onPressed: () {
                    ModalRoute.of(context)!.navigator!.pop();
                  },
                ),
                IconButton(
                  icon: Container(
                    height: 24,
                    width: 24,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: CustomColor.orange,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Icon(
                      Icons.shopping_bag_outlined,
                      size: 14,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    ModalRoute.of(context)!.navigator!.pop();
                  },
                ),
              ],
            ),
            const SizedBox(height: 150),
            Container(
                height: 580,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: CustomColor.backgroundColor,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Container(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Karachi Biryani',
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: CustomColor.fontBlack,
                                ),
                              ),
                              const SizedBox(height: 6),
                              const StarCustom(),
                            ],
                          ),
                          const RemoveAddCustom(),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Details about the item will go here, giving users more insights into what they are viewing.',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: CustomColor.fontLight,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Igredientes',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: CustomColor.fontBlack,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Lorem ipsum dolor sit amet consectetur. Sodales sit arcu gravida scelerisque. Faucibus maecenas in sed purus.',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: CustomColor.fontLight,
                        ),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Preço total:',
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: CustomColor.fontLight,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                '\$ 12.00',
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  color: CustomColor.fontBlack,
                                ),
                              ),
                            ],
                          ),
                          ButtomCustom(
                            width: 163,
                            height: 45,
                            titulo: 'Peça agora',
                            onPressed: () {
                              print('PedidoPage');
                              Modular.to.pushNamed('/pedidoPage');
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

  // void _showBottomSheet() {
  //   showModalBottomSheet(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return Container(
  //         // padding: EdgeInsets.all(16),
  //         height: 575,
  //         child: Column(
  //           // mainAxisAlignment: MainAxisAlignment.start,
  //           // crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             Text(
  //               'Item Details',
  //               style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold),
  //             ),
  //             SizedBox(height: 10),
  //             Text(
  //               'Details about the item will go here, giving users more insights into what they are viewing.',
  //               style: GoogleFonts.poppins(fontSize: 16),
  //             ),
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }
}

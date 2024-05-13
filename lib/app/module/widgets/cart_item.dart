import 'package:flutter/material.dart';
import 'package:fluttermart/app/utils/custom_color.dart';
import 'package:google_fonts/google_fonts.dart';

class CartItem extends StatefulWidget {
  final String? image;
  final String? title;

  const CartItem({super.key, this.image, this.title});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  List<bool> starStatus = [true, true, true, false, false];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      width: 200,
      child: Card(
        clipBehavior: Clip.antiAlias,
        color: Colors.white,
        shadowColor: CustomColor.shadowColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              widget.image ?? '',
              width: 200,
              height: 140,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title ?? '',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: CustomColor.fontBlack,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: _buildStarList() +
                        [
                          const SizedBox(width: 4),
                          Text(
                            '${starStatus.where((s) => s).length}',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: CustomColor.fontLight,
                            ),
                          ),
                        ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildStarList() {
    return List<Widget>.generate(5, (index) {
      return InkWell(
        child: Icon(
          Icons.star,
          color: starStatus[index] ? CustomColor.orange : CustomColor.fontLight,
        ),
        onTap: () {
          setState(() {
            // Atualizar todos os estados de estrela até o índice clicado
            for (int i = 0; i < starStatus.length; i++) {
              starStatus[i] = i <= index;
            }
          });
        },
      );
    });
  }
}

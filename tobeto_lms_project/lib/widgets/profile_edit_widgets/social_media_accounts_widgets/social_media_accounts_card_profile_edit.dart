import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMediaAccountsCardProfileEdit extends StatelessWidget {
  const SocialMediaAccountsCardProfileEdit({
    Key? key,
    required this.iconData,
    required this.iconColor,
    required this.labelText,
    required this.hintText,
  }) : super(key: key);
  final IconData iconData;
  final Color iconColor;
  final String labelText;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      child: TextFormField(
        decoration: InputDecoration(
            prefixIcon: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(style: BorderStyle.none),
                  borderRadius: BorderRadius.circular(12)),
              padding: const EdgeInsets.all(2),
              margin: const EdgeInsets.all(8.0),
              child: FaIcon(
                iconData,
                //FontAwesomeIcons.github,
                color: iconColor,
                // Colors.black,
                size: 50,
              ),
            ),
            label: Text(labelText),
            hintText: hintText,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            suffixIcon: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // Satıra yaymaması için min olması önemli!
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: () {},
                  child: const Icon(Icons.delete),
                ),
                IconButton(
                    onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.pen))
              ],
            )),
        keyboardType: TextInputType.name,
      ),
    );
  }
}

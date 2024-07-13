import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expesnsses_item_model.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/widgets/all_Expesses_item_Header.dart';

class InActiveAllExpenssiesItem extends StatelessWidget {
  const InActiveAllExpenssiesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpesnssesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllexpeensessItemHeader(
            image: itemModel.image,
          ),
          SizedBox(
            height: 34,
          ),
          Text(
            itemModel.title,
            style: AppStyles.styleMedium16,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            itemModel.date,
            style: AppStyles.styleRegular14,
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            itemModel.price,
            style: AppStyles.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}

class ActiveAllExpenssiesItem extends StatelessWidget {
  const ActiveAllExpenssiesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpesnssesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Color(0xFF4EB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllexpeensessItemHeader(
            imageColor: Colors.white,
            imageBackground: Colors.white.withOpacity(0.10000000149011612),
            image: itemModel.image,
          ),
          SizedBox(
            height: 34,
          ),
          Text(
            itemModel.title,
            style: AppStyles.styleMedium16.copyWith(color: Colors.white),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            itemModel.date,
            style: AppStyles.styleRegular14.copyWith(color: Color(0xFFFAFAFA)),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            itemModel.price,
            style: AppStyles.styleSemiBold24.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../models/CoffeeItem.dart';

class CoffeeWidget extends StatefulWidget {
  const CoffeeWidget({required this.coffeeItem, required this.index, super.key, required this.onDelete});

  final CoffeeItem coffeeItem;
  final int index;
  final void Function(int index) onDelete;

  @override
  _CoffeeWidgetState createState() => _CoffeeWidgetState();
}

class _CoffeeWidgetState extends State<CoffeeWidget> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white10,
        border: Border.all(color: Colors.black, width: 2.0),
      ),
      child: ElevatedButton(
        onPressed: () {
          // 여기서 네비게이션 로직을 추가할 수 있습니다
          print("네비게이션");
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent, // 버튼 배경 투명
          shadowColor: Colors.transparent, // 그림자 제거
        ),
        child: Center(
          child: Row(
            children: [
              SizedBox(
                width: 40,
                child: Text("${widget.index}"),
              ),
              SizedBox(
                child: Image.asset('assets/coffee.jpg',
                  width: 80,
                  height: 100,
                  fit: BoxFit.fill,


                ),

              ),

              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("제목 : ${widget.coffeeItem.title}"),
                    Text(
                      "내용 : ${widget.coffeeItem.description}",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 50,
                height: 50,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      isLiked = !isLiked;
                    });
                    // print("좋아요 버튼");
                  },
                  icon: Icon(
                    isLiked ? Icons.favorite : Icons.favorite_border,
                    color: isLiked ? Colors.red : Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 50,
                height: 50,
                child: IconButton(
                  onPressed: () {
                    widget.onDelete(widget.index);
                    // print("삭제 버튼");
                  },
                  icon: const Icon(
                    Icons.cancel,
                    color: Colors.black,
                    ),
                    ),
                ),
             ],
    ),
    ),
    )
    );
  }
}


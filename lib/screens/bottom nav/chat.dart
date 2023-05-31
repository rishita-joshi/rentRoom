import 'package:flutter/material.dart';
import 'package:rent_a_room/config/font_asset.dart';

import '../../themes/ColorPalette.dart';
class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: AppBar(
            elevation: 0.0,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
               // color: Colors.black,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            actions: [
IconButton(onPressed: (){}, icon: Icon(Icons.edit_square , color: ColorPalette.darkGrayColor,))

            ],
            title: Text(
              'Chat',
              style: TextStyle(
                 // color: ColorPalette.blackColor,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Roboto',
                  fontSize: 20),
            ),
            centerTitle: true,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 3,

        itemBuilder: (context, index) {
          
      
return       
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1682686580922-2e594f8bdaa7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3087&q=80"),
                radius: 28,
              ),
              title: SizedBox(
                height: 50,
                width: 90,
                child: Row(
                  children: [
                    Text(
                      "Rishita Joshi",
                      style: FontStyles.textStyleBold (color: Theme.of(context).colorScheme.primary , fontSize: 20, fontWeight: FontAsset.medium),
                    
                    ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              width: 25,
              height: 30,
              decoration: new BoxDecoration(
         // color: ColorPalette.darkGrayColor,
          shape: BoxShape.circle,
              ),
              child: Center(
                child: Text("1" ,              style: FontStyles.textStyleRegular(color: Theme.of(context).colorScheme.onPrimary , fontSize: 16 , fontWeight: FontAsset.light),
                ),
              ),
            ),
        ),
                  ],
                ),
              ),
              subtitle: Text("Hii How Are You ? ",
                  style: FontStyles.textStyleRegular(color: Theme.of(context).colorScheme.onSecondary , fontSize: 16 , fontWeight: FontAsset.light),
                      ),
              trailing: Text(
              "29 March" ,  style: FontStyles.textStyleSemiBold(color: Theme.of(context).colorScheme.onSecondary , fontSize: 14),),
              ),
      );
        }
        ),
      );
  

      
  
  }
  
  // profileImageWidget() {


  //    ImageProvider<Object>? profileImageWidget() {
  //   if (profilePicture.isNotEmpty) {
  //     return NetworkImage(profilePicture);
  //   }
  //   return AssetImage(ImageClass.DEMO_IMAGE);
  // }
  // }
}
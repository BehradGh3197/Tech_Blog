import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tec/gen/assets.gen.dart';
import 'package:tec/my_colors.dart';
import 'package:tec/models/fake_data.dart';
import 'package:tec/my_strings.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    double bodyMargin = size.width/10;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(0,16,0,0),
          child: Column(
            children: [
              Row( 
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.menu),
                  Assets.images.logo.image(
                    height: size.height/13.6
                  ),
                  Icon(Icons.search),
                ],
              ),
            SizedBox(height: 8,),

            //poster 
            Stack(
              children: [
                Container(

                  width: size.width/1.19,
                  height: size.height/4.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    image:DecorationImage(
                       image: AssetImage(homePagePosterMap["imageAsset"]),
                       fit: BoxFit.cover
                      )
                     

                    ),
                    foregroundDecoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    gradient: LinearGradient(
                      colors: gradiantColors.homePosterCoverGradiant,
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter
                      )

                    ),
                    
                ),                
              
                Positioned(
                  bottom: 8,
                  left: 0,
                  right: 0,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          
                          Text(homePagePosterMap["writer"] + " - " + homePagePosterMap["date"], style: textTheme.titleMedium,),
                          Row(
                            children: [
                              Text(homePagePosterMap["views"] , style: textTheme.titleMedium,),
                              SizedBox(width: 8,),
                              Icon(Icons.remove_red_eye_sharp , color: Colors.white,size: 16,),
                            ],
                          )
                        ],
                      ),
                      Text("دوازده قدم برنامه نویسی یک دوره ی...س" , style: textTheme.displayLarge,)
                    ],
                  ),
                )
              
              ],
            ),

             SizedBox(height: 16,),
            //tag list
             SizedBox(
              height: 60,
               child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tagList.length,
                itemBuilder: ((context, index){
                
                return Padding(
                  padding: EdgeInsets.fromLTRB(0, 8,index==0?bodyMargin:15, 8),
                  child: Container(
                    height: 60,
                    width: 100,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                      gradient: LinearGradient(
                        colors: gradiantColors.tags,
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft
                        ),
                       
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16,8,8,8),
                      child: Row(
                        children: [
                          Assets.icons.hashtagicon.image(color: Colors.white,width: 16,height: 16),
                          SizedBox(width: 8,),
                          Expanded(child: Text(tagList[index].title,style: textTheme.displayMedium,)) 
                        ],
                      ),
                    )
                  ),
                );
               
               })),
             ),
            const SizedBox(height: 32,),
            
            //see more
            Padding(
              padding: EdgeInsets.only(right: bodyMargin, bottom: 8),
              child: Row(
                children: [
                  Assets.icons.bluepen.image(color: solidColors.seeMore, width: 30, height: 30),
                  SizedBox(width: 8,),
                  Text(myStrings.viewHottestBlog , style: textTheme.displaySmall,)
                ],),
            ),
            
            SizedBox(
              height: size.height/4.1,
              child: ListView.builder(
                itemCount: 7,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context , index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: EdgeInsets.only(right: index==0? bodyMargin :15),
                    child: Container(
                      height: 50,
                      width: 100,
                      color: Colors.amberAccent,
                    ),
                  ),
                );
              }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

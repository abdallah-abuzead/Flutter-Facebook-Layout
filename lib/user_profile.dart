import 'package:flutter/material.dart';
import 'package:flutter_facebook_layout/post_card.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: 200.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/my_cover_image.jpeg'),
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 100.0,
                      child: Container(
                        height: 190.0,
                        width: 190.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('images/my_profile_image.jpeg'),
                            ),
                            border: Border.all(color: Colors.white, width: 6.0)),
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  height: 130.0,
                  child: const Text('Abdallah Abuzead',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0)),
                ),
                const SizedBox(height: 12.0),
                Text(
                  'Software Engineer building Mobile apps using Flutter, and Web apps using Laravel.',
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey.shade200,
                          padding: const EdgeInsets.symmetric(vertical: 8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.person, color: Colors.black),
                            SizedBox(width: 5),
                            Text('Friends', style: TextStyle(fontSize: 15, color: Colors.black)),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(padding: const EdgeInsets.symmetric(vertical: 8)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.offline_bolt),
                            SizedBox(width: 5),
                            Text('Message', style: TextStyle(fontSize: 15)),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        _showMoreOption(context);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey.shade200,
                        padding: const EdgeInsets.symmetric(vertical: 8),
                      ),
                      child: const Icon(Icons.more_horiz, color: Colors.black),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                const Divider(color: Colors.grey),
                Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      horizontalTitleGap: 0,
                      leading: const Icon(Icons.business_center, size: 30),
                      title: Wrap(
                        children: const [
                          Text('Founder and CEO at ', style: TextStyle(fontSize: 16.0)),
                          Text('SignBox', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      horizontalTitleGap: 0,
                      leading: const Icon(Icons.business_center, size: 30),
                      title: Wrap(
                        children: const [
                          Text('Works at ', style: TextStyle(fontSize: 16.0)),
                          Text('SignBox', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      horizontalTitleGap: 0,
                      leading: const Icon(Icons.school, size: 30),
                      title: Wrap(
                        children: const [
                          Text('Studied Computer Science at ', style: TextStyle(fontSize: 16.0)),
                          Text('Abc University',
                              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      horizontalTitleGap: 0,
                      leading: const Icon(Icons.house, size: 30),
                      title: Wrap(
                        children: const [
                          Text('Lives in ', style: TextStyle(fontSize: 16.0)),
                          Text('Pakistan', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      horizontalTitleGap: 0,
                      leading: const Icon(Icons.location_on, size: 30),
                      title: Wrap(
                        children: const [
                          Text('From ', style: TextStyle(fontSize: 16.0)),
                          Text('Lahore', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    const ListTile(
                      contentPadding: EdgeInsets.zero,
                      horizontalTitleGap: 0,
                      leading: Icon(Icons.favorite, size: 30),
                      title: Text('Married', style: TextStyle(fontSize: 16.0)),
                    ),
                    const ListTile(
                      contentPadding: EdgeInsets.zero,
                      horizontalTitleGap: 0,
                      leading: Icon(Icons.library_add_check, size: 30),
                      title: Text('Followed by 100K people', style: TextStyle(fontSize: 16.0)),
                    ),
                    const ListTile(
                      contentPadding: EdgeInsets.zero,
                      horizontalTitleGap: 0,
                      leading: Icon(Icons.more_horiz, size: 30),
                      title: Text('See Abdallah\'s About Info', style: TextStyle(fontSize: 16.0)),
                    ),
                  ],
                )
              ],
            ),
          ),
          //===============================================================================================
          const Divider(color: Colors.grey),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text('Friends', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                Text('54 mutual friends', style: TextStyle(fontSize: 18, color: Colors.grey.shade700)),
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    friendCard(name: 'Ahmed Hamed', image: 'images/fb_profile_pic_1.jpeg'),
                    friendCard(name: 'Omar Abuzead', image: 'images/fb_profile_pic_2.jfif'),
                    friendCard(name: 'Mostafa Senosy', image: 'images/fb_profile_pic_3.jpg'),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    friendCard(name: 'Om Mayar', image: 'images/fb_profile_pic_4.jpg'),
                    friendCard(name: 'أم بسنت', image: 'images/fb_profile_pic_5.jpg'),
                    friendCard(name: 'Wessam Elshazly', image: 'images/fb_profile_pic_6.jpg'),
                  ],
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade200,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                  ),
                  child: const Text('See all friends', style: TextStyle(fontSize: 15, color: Colors.black)),
                ),
              ],
            ),
          ),
          //===================================================================================
          const Divider(thickness: 12),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text('Posts', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                ListTile(
                  leading: const CircleAvatar(
                      radius: 25, backgroundImage: AssetImage('images/fb_profile_pic_1.jpeg')),
                  title:
                      Text('Write something to Abdallah...', style: TextStyle(color: Colors.grey.shade600)),
                  contentPadding: EdgeInsets.zero,
                ),
              ],
            ),
          ),
          const Divider(color: Colors.grey),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(border: Border(right: BorderSide(color: Colors.grey))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.create, color: Colors.purple),
                      const SizedBox(width: 5),
                      Text('Write Post', style: TextStyle(color: Colors.grey.shade800)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.collections, color: Colors.green),
                      SizedBox(width: 5),
                      Text('Share Photo', textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 3),
          const Divider(thickness: 12),
          Container(
            height: 70,
            padding: const EdgeInsets.all(16),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                buildElevatedButton(text: 'Photos', icon: Icons.collections),
                buildElevatedButton(text: 'Life Events', icon: Icons.star),
              ],
            ),
          ),
          const Divider(thickness: 12),
          postCard(
            context: context,
            userImage: 'images/fb_profile_pic_1.jpeg',
            username: 'Abdallah Abuzead',
            text:
                'New year, new stickers. Happy National #StickerDay—let\'s see your favorites from the past year!',
            image: 'images/my_profile_image.jpeg',
          ),
          postCard(
            context: context,
            text:
                'New year, new stickers. Happy National #StickerDay—let\'s see your favorites from the past year!',
            userImage: 'images/fb_profile_pic_3.jpg',
            username: 'Ahmed Gamal',
          ),
        ],
      ),
    );
  }

  Widget buildElevatedButton({required String text, required IconData icon}) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          shape: const StadiumBorder(),
          primary: Colors.grey.shade300,
        ),
        child: Row(
          children: [
            Icon(icon, size: 18, color: Colors.black87),
            const SizedBox(width: 5),
            Text(text, style: const TextStyle(fontSize: 15, color: Colors.black87)),
          ],
        ),
      ),
    );
  }

  Expanded friendCard({required String name, required String image}) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            shape: const CircleBorder(),
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 5, top: 5),
            child: Text(name, style: const TextStyle(fontSize: 15)),
          ),
        ],
      ),
    );
  }

  _showMoreOption(cx) {
    showModalBottomSheet(
      context: cx,
      builder: (BuildContext bcx) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: const [
                  Icon(Icons.feedback, color: Colors.black),
                  SizedBox(width: 10.0),
                  Text('Give feedback or report this profile', style: TextStyle(fontSize: 18.0))
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: const [
                  Icon(Icons.block, color: Colors.black),
                  SizedBox(width: 10.0),
                  Text('Block', style: TextStyle(fontSize: 18.0))
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: const [
                  Icon(Icons.link, color: Colors.black),
                  SizedBox(width: 10.0),
                  Text('Copy link to profile', style: TextStyle(fontSize: 18.0))
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: const [
                  Icon(Icons.search, color: Colors.black),
                  SizedBox(width: 10.0),
                  Text('Search Profile', style: TextStyle(fontSize: 18.0))
                ],
              ),
            )
          ],
        );
      },
    );
  }
}

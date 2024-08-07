import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:gmail_clone/components/email_card.dart';
import 'package:gmail_clone/components/my_drawer.dart';
import 'package:gmail_clone/controllers/email_controller.dart';

class EmailsPage extends StatefulWidget {
  const EmailsPage({
    super.key,
    required this.scrollController,
  });
  final ScrollController scrollController;

  @override
  State<EmailsPage> createState() => _EmailsPageState();
}

class _EmailsPageState extends State<EmailsPage> {
  bool _isExtended = true;
  final EmailController controller = Get.put(EmailController());

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    widget.scrollController.removeListener(_onScroll);
    widget.scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (widget.scrollController.position.userScrollDirection ==
        ScrollDirection.reverse) {
      if (_isExtended) {
        setState(() {
          _isExtended = false;
        });
      }
    } else if (widget.scrollController.position.userScrollDirection ==
        ScrollDirection.forward) {
      if (!_isExtended) {
        setState(() {
          _isExtended = true;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      floatingActionButton: _isExtended
          ? FloatingActionButton.extended(
              onPressed: () {},
              label: const Text(
                'Compose',
                style: TextStyle(color: Colors.white70),
              ),
              icon: const Icon(
                Icons.edit,
                color: Colors.white70,
              ),
            )
          : FloatingActionButton(
              onPressed: () {},
              child: const Icon(
                Icons.edit,
                color: Colors.white70,
              ),
            ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
          child:
              CustomScrollView(controller: widget.scrollController, slivers: [
            SliverAppBar(
              backgroundColor: Colors.grey[800],
              floating: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              title: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Search in mail',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              actions: const [
                Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: CircleAvatar(
                    maxRadius: 18,
                    backgroundImage: AssetImage('lib/images/ahmadDp.png'),
                  ),
                )
              ],
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'Primary',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
            Obx(() {
              return SliverList.builder(
                  itemCount: controller.emails.length,
                  itemBuilder: (context, index) =>
                      EmailCard(email: controller.emails[index],));
            })
          ]),
        ),
      ),
    );
  }
}

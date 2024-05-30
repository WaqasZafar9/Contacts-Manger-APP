// TODO Implement this library.
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:contact_app/pages/add_contact_page.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:contact_app/pages/edit_contact_page.dart'; // Import EditContactPage



class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  Stream<QuerySnapshot> contactsSnapshot = FirebaseFirestore.instance.collection('contact').snapshots();

  Future<void> deleteContact(String contactId) async {
    try {
      await FirebaseFirestore.instance.collection('contact').doc(contactId).delete();
    } catch (e) {
      print('Error deleting contact: $e');
      // Handle error or show a message to the user
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Contacts"),
      ),
      body: StreamBuilder<QuerySnapshot>(
          stream: contactsSnapshot,
          builder: (BuildContext context, snapshot) {
            if (snapshot.hasData) {
              final List<QueryDocumentSnapshot> documents = snapshot.data!.docs;
              if (documents.isEmpty) {
                return Center(
                  child: Text(
                    "No Contact Yet!",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Choose your desired color
                    ),
                  ),
                );
              }
              return ListView.builder(
                itemCount: documents.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  final contactId = documents[index].id;
                  final contact =
                  documents[index].data() as Map<String, dynamic>;
                  final String name = contact['name'];
                  final String phone = contact['phone'];
                  final String email = contact['email'];
                  final String avatar =
                    //  "https://avatars.dicebear.com/api/avataaars/$name.png";
                      "https://api.multiavatar.com/${name.replaceAll(' ', '-')}.png";
                  return ListTile(
                    onTap: () {},
                    leading: Hero(
                      tag: contactId,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          avatar,
                        ),
                      ),
                    ),
                    title: Text(name),
                    subtitle: Text("$phone \n$email"),
                    isThreeLine: true,
                    //  trailing should be delete and edit button
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EditContactPage(
                                  id: contactId,
                                  name: name,
                                  phone: phone,
                                  email: email,
                                ),
                              ),
                            );
                          },
                          splashRadius: 24,
                          icon: const Icon(IconlyBroken.edit),
                        ),
                        IconButton(
                          onPressed: () {
                            deleteContact(contactId);
                          },
                          splashRadius: 24,
                          icon: const Icon(IconlyBroken.delete),
                        ),
                      ],
                    ),
                  );
                },
              );
            }
            if (snapshot.hasError) {
              return const Center(
                child: Text("An Error Occured"),
              );
            }
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          }),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddContactPage(),
            ),
          );
        },
        label: const Text("Add Contact"),
        icon: const Icon(IconlyBroken.document),
      ),
    );
  }
}
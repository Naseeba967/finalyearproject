import 'package:finalyearproject/common/widgets/appbar/appbar.dart';
import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Appbar(
        showBackArrow: true,
        title: Text('Add new Address'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Form(
              child: Column(
            children: [
              TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(
                        FontAwesomeIcons.solidUser,
                      ),
                      labelText: 'Name')),
              const SizedBox(
                height: Sizes.spaceBtwInputField,
              ),
              TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(
                        FontAwesomeIcons.mobile,
                      ),
                      labelText: 'Phone')),
              const SizedBox(
                height: Sizes.spaceBtwInputField,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(
                              FontAwesomeIcons.building,
                            ),
                            labelText: 'Street')),
                  ),
                  const SizedBox(
                    height: Sizes.spaceBtwInputField,
                  ),
                  Expanded(
                    child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(
                              FontAwesomeIcons.code,
                            ),
                            labelText: 'Post Code')),
                  ),
                ],
              ),
              const SizedBox(
                height: Sizes.spaceBtwInputField,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(
                              FontAwesomeIcons.building,
                            ),
                            labelText: 'City')),
                  ),
                  const SizedBox(
                    height: Sizes.spaceBtwInputField,
                  ),
                  Expanded(
                    child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.local_activity,
                            ),
                            labelText: 'State')),
                  ),
                ],
              ),
              const SizedBox(
                height: Sizes.spaceBtwInputField,
              ),
              TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(
                        FontAwesomeIcons.connectdevelop,
                      ),
                      labelText: 'Country')),
              const SizedBox(
                height: Sizes.defaultSpace,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Save'),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}

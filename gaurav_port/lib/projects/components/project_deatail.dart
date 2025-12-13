import 'package:flutter/material.dart';
import 'package:gaurav_port/light/colors.dart';
import 'package:gaurav_port/view model/responsive.dart';

class ProjectDetail extends StatelessWidget {
  final int index;
  const ProjectDetail({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);

    return Padding(
      padding: EdgeInsets.only(
        top: defaultPadding / 3,
        left: defaultPadding / 2,
        right: defaultPadding / 2,
        bottom: defaultPadding / 3,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              'Project $index',
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),

          SizedBox(height: defaultPadding),


          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Project description',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                      height: 1.5,
                    ),
                  ),

                  SizedBox(height: defaultPadding / 2),
                ],
              ),
            ),
          ),

          if (!isMobile) SizedBox(height: defaultPadding / 2),
          
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

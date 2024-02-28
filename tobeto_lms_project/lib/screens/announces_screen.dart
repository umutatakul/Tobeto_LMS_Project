import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_lms_project/api/blocs/announce_bloc/announce_bloc.dart';
import 'package:tobeto_lms_project/api/blocs/announce_bloc/announce_event.dart';
import 'package:tobeto_lms_project/api/blocs/announce_bloc/announce_state.dart';
import 'package:tobeto_lms_project/widgets/custom_app_bar_widget.dart';
import 'package:tobeto_lms_project/widgets/custom_drawer.dart';
import 'package:tobeto_lms_project/widgets/home_widgets/announce_card_home.dart';

class AnnouncesScreen extends StatelessWidget {
  const AnnouncesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnnounceBloc, AnnounceState>(
      builder: (context, state) {
        if (state is AnnounceInitialState) {
          context.read<AnnounceBloc>().add(GetAnnounceEvent());
        }
        if (state is AnnounceLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is AnnounceLoadedState) {
          return Scaffold(
            appBar: const CustomAppBarWidget(appBarTitle: "Duyurularım"),
            drawer: CustomDrawer(),
            body: Container(
              //TODO buraya bir header oluştur
              child: Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: state.announcesList.length,
                  itemBuilder: (ctx, index) {
                    return AnnounceCardHome(
                        announce: state.announcesList[index]);
                  },
                ),
              )),
            ),
          );
        }

        if (state is AnnounceErrorState) {
          return Center(
            child: Text(state.errorMessage),
          );
        }
        return const Center(
          child: Text("Beklenmedik Bir Hata ile Karşılaştınız"),
        );
      },
    );
  }
}


// Scaffold(
//             appBar: const CustomAppBarWidget(appBarTitle: "Başvurularım"),
//             drawer: CustomDrawer(),
//             body: Container(
//               //TODO buraya bir header oluştur
//               child: Expanded(
//                   child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: ListView.builder(
//                   scrollDirection: Axis.vertical,
//                   itemCount: application.length,
//                   itemBuilder: (ctx, index) {
//                     return ApplicationCardApplicationScreen(
//                         application: application[index]);
//                   },
//                 ),
//               )),
//             ),
//           );
//         }
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_lms_project/api/blocs/application_bloc/application_bloc.dart';
import 'package:tobeto_lms_project/api/blocs/application_bloc/application_event.dart';
import 'package:tobeto_lms_project/api/blocs/application_bloc/application_state.dart';
import 'package:tobeto_lms_project/data/apllications_mock_data_list.dart';
import 'package:tobeto_lms_project/widgets/applications_widgets/application_card_application_screen.dart';
import 'package:tobeto_lms_project/widgets/custom_app_bar_widget.dart';
import 'package:tobeto_lms_project/widgets/custom_drawer.dart';

class ApplicationsScreen extends StatelessWidget {
  ApplicationsScreen({
    Key? key,
  }) : super(key: key);

  final applicationList = applicationsDataList;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApplicationBloc, ApplicationState>(
      builder: (context, state) {
        if (state is ApplicationInitialState) {
          context.read<ApplicationBloc>().add(GetApplicationEvent());
        }
        if (state is ApplicationLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is ApplicationLoadedState) {
          final application = state.application;
          return Scaffold(
            appBar: const CustomAppBarWidget(appBarTitle: "Başvurularım"),
            drawer: CustomDrawer(),
            body: Container(
              //TODO buraya bir header oluştur
              child: Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: application.length,
                  itemBuilder: (ctx, index) {
                    return ApplicationCardApplicationScreen(
                        application: application[index]);
                  },
                ),
              )),
            ),
          );
        }
        if (state is ApplciationErrorState) {
          return Center(
            child: Text(state.errorMessage),
          );
        }
        return const Center(
          child: Text("Beklenmedik Hata Alındı"),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/core/common/style/colors/colors_dark.dart';
import 'package:shop_app/core/common/widgets/custom_text_field.dart';
import 'package:shop_app/features/customer/home_customer/bloc/get_all_products_bloc.dart';

class SearchForProducts extends StatefulWidget {
  const SearchForProducts({super.key});

  @override
  State<SearchForProducts> createState() => _SearchForProductsState();
}

class _SearchForProductsState extends State<SearchForProducts> {
  @override
  void dispose() {
    context.read<GetAllProductsBloc>().searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAllProductsBloc, GetAllProductsState>(
      builder: (context, state) {
        final bloc = context.read<GetAllProductsBloc>();
        final isListening = state.maybeMap(
          listening: (_) => true,
          orElse: () => false,
        );

        return Padding(
          padding: const EdgeInsets.all(8),
          child: CustomTextField(
            controller: bloc.searchController,
            keyboardType: TextInputType.emailAddress,
            filled: true,
            fillColour: const Color(0xFFF5FCF9),
            hintText: 'Search for products',
            onChanged: (value) {
              bloc.add(GetAllProductsEvent.onTextChanged(value.toString(), fromVoice: false));
              return null;
            },
            suffixIcon: IconButton(
              icon: Icon(isListening ? Icons.stop : Icons.mic),
              onPressed: () {
                if (isListening) {
                  bloc.add(const GetAllProductsEvent.stopListening());
                } else {
                  bloc.add(const GetAllProductsEvent.startListening());
                }
              },
            ),
            // suffixIcon: IconButton(
            //   onPressed: () {
            //     //  bloc.searchController.clear();
            //     //  bloc.add(const GetAllUsersEvent.getAllUsers(isNotLoading: true));
            //   },
            //   icon: bloc.searchController.text.isEmpty
            //       ? const SizedBox.shrink()
            //       : const Icon(Icons.clear, color: ColorsDark.blueLight),
            // ),
          ),
        );
      },
    );
  }
}

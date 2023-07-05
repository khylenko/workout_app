// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

import 'dart:core';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:personal_workout_app/features/statistics/widgets/statistics_card_widget.dart';
import 'package:personal_workout_app/generated_assets/colors.gen.dart';
import 'package:personal_workout_app/shared/models/exersize_model.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:widgetbook/widgetbook.dart';

final directories = [
  WidgetbookFolder(
    name: 'features',
    children: [
      WidgetbookFolder(
        name: 'statistics',
        children: [
          WidgetbookFolder(
            name: 'widgets',
            children: [
              WidgetbookComponent(
                name: 'StatisticsCard',
                useCases: [
                  WidgetbookUseCase(
                    name: 'Statistics Card',
                    builder: (context) => statisticsCardUseCase(context),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  ),
];

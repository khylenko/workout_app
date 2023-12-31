// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ru = {
  "app_locale": "ru",
  "app_name": "Упражнятор",
  "app_settings": "Настройки",
  "description": "Описание:",
  "sets": "Подходы:",
  "reps": "Повторения:",
  "statistics": "Статистика",
  "exersizes": "Упражнения",
  "home_page_no_ex_title": "Вы еще не создали ни одного упражнения",
  "home_page_no_ex_hint": "Нажмите на \"+\" в верхнем правом углу",
  "home_page_no_ex_import": "Или импортируйте упражнения",
  "create_exersize_page_title": "Создать упражнение",
  "create_exersize_page_inputs_title": "Название",
  "create_exersize_page_inputs_description": "Описание",
  "create_exersize_page_inputs_image": "Ссылка на картинку",
  "create_exersize_page_inputs_video": "Ссылка на видео",
  "create_exersize_page_inputs_sets_relax_time": "Отдых между подходами",
  "create_exersize_page_inputs_reps_relax_time": "Отдых между повторениями",
  "create_exersize_page_inputs_exersize_relax_time": "Отдых после упражнения",
  "save_exersize_bottomsheet_save_option": "Сохранить и выйти",
  "save_exersize_bottomsheet_exit_option": "Выйти без сохранения",
  "workout_page_start": "Старт!",
  "workout_page_card_reps_done": "Повторений сделано:",
  "workout_page_card_current_set": "Подход №",
  "workout_page_card_end_set": "Завершить подход",
  "workout_page_end_exersize": "Завершить упражнение",
  "rest_bottomsheet_title": "Отдых",
  "rest_bottomsheet_button": "Завершить",
  "rest_bottomsheet_button_hide": "Свернуть",
  "delete_exersize_bottomsheet_title": "Удалить упражнение?",
  "delete_exersize_bottomsheet_description": "Это действие необратимо",
  "delete_exersize_bottomsheet_delete_option": "Удалить",
  "delete_exersize_bottomsheet_exit_option": "Отмена",
  "rest_timer_notification_title": "Отдых",
  "rest_timer_notification_button": "Отмена",
  "back_to_work_notification_title": "Отдых закончен",
  "import_page_title": "Импорт",
  "import_page_tab_current_data_created": "Текущие данные от:",
  "export_bottomsheet_title": "Экспорт",
  "export_bottomsheet_description_1": "Экспортировать",
  "export_bottomsheet_description_2": "Упражнения",
  "export_bottomsheet_description_3": "и",
  "export_bottomsheet_description_4": "Статистику",
  "export_bottomsheet_description_5": "?",
  "export_bottomsheet_button_ok": "Да",
  "export_bottomsheet_button_cancel": "Отмена",
  "error_bottomsheet_title": "Ошибка!",
  "error_bottomsheet_button": "Ясно",
  "import_bottomsheet_title": "Импорт",
  "import_bottomsheet_description_1": "Импортировать",
  "import_bottomsheet_description_2": "Упражнения",
  "import_bottomsheet_description_3": "и",
  "import_bottomsheet_description_4": "Статистику",
  "import_bottomsheet_description_5": "?",
  "import_bottomsheet_button_ok": "Да",
  "import_bottomsheet_button_cancel": "Отмена",
  "ex_increase_bottomsheet_title": "Пора увеличивать нагрузку",
  "ex_increase_bottomsheet_description": "Наблюдается стагнация в твоём прогрессе. Увеличь количество подходов или повторений.",
  "ex_increase_bottomsheet_hint": "Нужно минимум {num} повторений.",
  "ex_increase_bottomsheet_button_ok": "Готово",
  "ex_increase_bottomsheet_button_cancel": "Отмена"
};
static const Map<String,dynamic> en = {
  "app_locale": "en",
  "app_name": "Workouter",
  "app_settings": "Settings",
  "description": "Description:",
  "sets": "Sets:",
  "reps": "Reps:",
  "statistics": "Statistics",
  "exersizes": "Exersizes",
  "home_page_no_ex_title": "You have not created any exercises yet",
  "home_page_no_ex_hint": "Click on \"+\" in the top right corner",
  "home_page_no_ex_import": "Or import exercises",
  "create_exersize_page_title": "Create exersize",
  "create_exersize_page_inputs_title": "Title",
  "create_exersize_page_inputs_description": "Description",
  "create_exersize_page_inputs_image": "Image URL",
  "create_exersize_page_inputs_video": "Video URL",
  "create_exersize_page_inputs_sets_relax_time": "Relax between sets",
  "create_exersize_page_inputs_reps_relax_time": "Relax between reps",
  "create_exersize_page_inputs_exersize_relax_time": "Relax after exersize",
  "save_exersize_bottomsheet_save_option": "Save and exit",
  "save_exersize_bottomsheet_exit_option": "Exit without saving",
  "workout_page_start": "Start!",
  "workout_page_card_reps_done": "Reps done:",
  "workout_page_card_current_set": "Set №",
  "workout_page_card_end_set": "Complete set",
  "workout_page_end_exersize": "Complete exersize",
  "rest_bottomsheet_title": "Rest",
  "rest_bottomsheet_button": "Cancel",
  "rest_bottomsheet_button_hide": "Hide",
  "delete_exersize_bottomsheet_title": "Delete exersize?",
  "delete_exersize_bottomsheet_description": "This action is irreversible",
  "delete_exersize_bottomsheet_delete_option": "Delete",
  "delete_exersize_bottomsheet_exit_option": "Cancel",
  "rest_timer_notification_title": "Rest",
  "rest_timer_notification_button": "Cancel",
  "back_to_work_notification_title": "Rest is over",
  "import_page_title": "Import",
  "import_page_tab_current_data_created": "Current data created:",
  "export_bottomsheet_title": "Export",
  "export_bottomsheet_description_1": "Export",
  "export_bottomsheet_description_2": "Exersizes",
  "export_bottomsheet_description_3": "and",
  "export_bottomsheet_description_4": "Statistics",
  "export_bottomsheet_description_5": "?",
  "export_bottomsheet_button_ok": "Yes",
  "export_bottomsheet_button_cancel": "Cancel",
  "import_bottomsheet_title": "Import",
  "import_bottomsheet_description_1": "Import",
  "import_bottomsheet_description_2_ex": "Exersizes",
  "import_bottomsheet_description_2_sta": "Statistics",
  "import_bottomsheet_description_3": "?",
  "import_bottomsheet_button_ok": "Yes",
  "import_bottomsheet_button_cancel": "Cancel",
  "ex_increase_bottomsheet_title": "It's time to increase the load",
  "ex_increase_bottomsheet_description": "There is a stagnation in your progress. Increase the number of sets or reps.",
  "ex_increase_bottomsheet_hint": "At least {num} reps needed.",
  "ex_increase_bottomsheet_button_ok": "Done",
  "ex_increase_bottomsheet_button_cancel": "Cancel"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ru": ru, "en": en};
}

Rake::Task["default"].clear

task default: %i[spec rubocop cucumber]

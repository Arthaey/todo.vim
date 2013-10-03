# todo.vim

Colorful syntax &amp; ftplugin files for keeping a TODO list in Vim.

TODOs can be flagged in increasingly bright levels of priority, and can be
marked with due dates that can be easily incremented.

The background color is pale yellow because it makes me think of post-it notes.

## Screenshot

![TODO screenshot](screenshot.png?raw=true)

## Usage

Be sure to `:set filetype=todo` or nothing will work.

Commands available:
- **Shift-0:** mark uncompleted task with default priority ("TODO"); gray text
- **Shift-1:** mark uncompleted task with highest priority ("TODO1"); red text
- **Shift-2:** mark uncompleted task with highest priority ("TODO2"); orange text
- **Shift-3:** mark uncompleted task with highest priority ("TODO3"); yellow text
- **asterisk:** mark task as currently in-progress; yellow text on yellow background
- **underscore:** complete task; black text
- **plus:** increment all "DUE week+N" text to be N-1, and mark any that were
  "DUE <day-of-the-week>" as "OVERDUE"
- **exclamation:** display due dates that are a day of the week that is past
  today, ie overdue (3-letter weekday abbreviations only) 

So basically, type "!" at the start of each day, and "+" at the start of each
week, to update the due dates appropriately. Then use Shift-<N> to mark a task
as priority 1-3, and type underscore to mark a task done.

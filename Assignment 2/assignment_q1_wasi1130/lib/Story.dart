// ignore_for_file: file_names

class Story {
  String? storyTitle;
  String? choice1;
  String? choice2;
  int choice1NextStory;
  int choice2NextStory;
  Story(
      {this.storyTitle,
      this.choice1,
      this.choice2,
      this.choice1NextStory = 0,
      this.choice2NextStory = 0});
}


List<topic_> getLibraryTopic_image(){

  List<topic_> topics = List<topic_>();
  topic_ topicmodel;

  //1
  topicmodel = new topic_();
  topicmodel.Topic_name = "Name";
  topicmodel.Image = "Images/book1.jpg";

  topics.add(topicmodel);

  //2
  topicmodel = new topic_();
  topicmodel.Topic_name = "Name";
  topicmodel.Image = "Images/book2.jpg";

  topics.add(topicmodel);
  //3
  topicmodel = new topic_();
  topicmodel.Topic_name = "Name";
  topicmodel.Image = "Images/book3.jpg";

  topics.add(topicmodel);
  //4
  topicmodel = new topic_();
  topicmodel.Topic_name = "Name";
  topicmodel.Image = "Images/book4.jpg";

  topics.add(topicmodel);
  //5
  topicmodel = new topic_();
  topicmodel.Topic_name = "Name";
  topicmodel.Image = "Images/book5.jpg";

  topics.add(topicmodel);
  //6
  topicmodel = new topic_();
  topicmodel.Topic_name = "Name";
  topicmodel.Image = "Images/book6.jpg";

  topics.add(topicmodel);
  //7
  topicmodel = new topic_();
  topicmodel.Topic_name = "Name";
  topicmodel.Image = "Images/book7.jpg";

  topics.add(topicmodel);
  //8
  topicmodel = new topic_();
  topicmodel.Topic_name = "Name";
  topicmodel.Image = "Images/book8.jpg";

  topics.add(topicmodel);
  //9
  topicmodel = new topic_();
  topicmodel.Topic_name = "Name";
  topicmodel.Image = "Images/book9.jpg";

  topics.add(topicmodel);
  //10
  topicmodel = new topic_();
  topicmodel.Topic_name = "Name";
  topicmodel.Image = "Images/book10.jpg";

  topics.add(topicmodel);


  return topics;

}

class topic_{
  String Topic_name;
  String Image;

}
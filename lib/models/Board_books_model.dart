
List<topic_> getBoard_Books(){

  List<topic_> topics = List<topic_>();
  topic_ topicmodel;

  //1
  topicmodel = new topic_();
  topicmodel.Topic_name = "Math";
  topicmodel.Image = "Images/math.jpg";

  topics.add(topicmodel);

  //2
  topicmodel = new topic_();
  topicmodel.Topic_name = "Bangla";
  topicmodel.Image = "Images/bangla.jpg";

  topics.add(topicmodel);
  //3
  topicmodel = new topic_();
  topicmodel.Topic_name = "English";
  topicmodel.Image = "Images/english.jpg";

  topics.add(topicmodel);
  //4
  topicmodel = new topic_();
  topicmodel.Topic_name = "Physics";
  topicmodel.Image = "Images/physics.png";

  topics.add(topicmodel);
  //5
  topicmodel = new topic_();
  topicmodel.Topic_name = "Accounting";
  topicmodel.Image = "Images/accounting.jpg";

  topics.add(topicmodel);
  //6
  topicmodel = new topic_();
  topicmodel.Topic_name = "Business";
  topicmodel.Image = "Images/business.jpg";

  topics.add(topicmodel);
  //7
  topicmodel = new topic_();
  topicmodel.Topic_name = "Biology";
  topicmodel.Image = "Images/biology.jpg";

  topics.add(topicmodel);
  //8
  topicmodel = new topic_();
  topicmodel.Topic_name = "Science";
  topicmodel.Image = "Images/sceince_p.jpg";

  topics.add(topicmodel);
  //9
  topicmodel = new topic_();
  topicmodel.Topic_name = "Finance";
  topicmodel.Image = "Images/finance.jpg";

  topics.add(topicmodel);
  //10
  topicmodel = new topic_();
  topicmodel.Topic_name = "Islam";
  topicmodel.Image = "Images/islam.jpg";

  topics.add(topicmodel);


  return topics;

}

class topic_{
  String Topic_name;
  String Image;

}

List<topic_> getQustionbankSubjects(){

  List<topic_> topics = List<topic_>();
  topic_ topicmodel;

  //1
  topicmodel = new topic_();
  topicmodel.Topic_name = "Math";


  topics.add(topicmodel);

  //2
  topicmodel = new topic_();
  topicmodel.Topic_name = "Bangla";

  topics.add(topicmodel);
  //3
  topicmodel = new topic_();
  topicmodel.Topic_name = "English";

  topics.add(topicmodel);
  //4
  topicmodel = new topic_();
  topicmodel.Topic_name = "Agriculture";

  topics.add(topicmodel);
  //5
  topicmodel = new topic_();
  topicmodel.Topic_name = "Accounting";

  topics.add(topicmodel);
  //6
  topicmodel = new topic_();
  topicmodel.Topic_name = "Business Study";

  topics.add(topicmodel);
  //7
  topicmodel = new topic_();
  topicmodel.Topic_name = "ICT";

  topics.add(topicmodel);
  //8
  topicmodel = new topic_();
  topicmodel.Topic_name = "Science";

  topics.add(topicmodel);
  //9
  topicmodel = new topic_();
  topicmodel.Topic_name = "Finance";

  topics.add(topicmodel);
  //10
  topicmodel = new topic_();
  topicmodel.Topic_name = "Islam";

  topics.add(topicmodel);


  return topics;

}

class topic_{
  String Topic_name;


}
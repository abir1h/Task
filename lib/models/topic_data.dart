
List<topic_> getTopic(){

  List<topic_> topics = List<topic_>();
  topic_ topicmodel;

  //1
  topicmodel = new topic_();
  topicmodel.Topic_name = "Topic";

  topics.add(topicmodel);

  //2
  topicmodel = new topic_();
  topicmodel.Topic_name = "Topic";
  //3
  topicmodel = new topic_();
  topicmodel.Topic_name = "Topic"; //4
  topicmodel = new topic_();
  topicmodel.Topic_name = "Topic";
  //5
  topicmodel = new topic_();
  topicmodel.Topic_name = "Topic";
  //6
  topicmodel = new topic_();
  topicmodel.Topic_name = "Topic";
  //7
  topicmodel = new topic_();
  topicmodel.Topic_name = "Topic";
  //8
  topicmodel = new topic_();
  topicmodel.Topic_name = "Topic";
  //9
  topicmodel = new topic_();
  topicmodel.Topic_name = "Topic";
  //10
  topicmodel = new topic_();
  topicmodel.Topic_name = "Topic";

  topics.add(topicmodel);


  return topics;

}

class topic_{
  String Topic_name;

}
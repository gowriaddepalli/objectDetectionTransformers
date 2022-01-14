## Google ML best Practices:

Reference: https://developers.google.com/machine-learning/guides/rules-of-ml

- Instance: The thing about which you want to make a prediction. For example, the instance might be a web page that you want to classify as either "about cats" or "not about cats".
- Label: An answer for a prediction task ­­ either the answer produced by a machine learning system, or the right answer supplied in training data. For example, the label for a web page might be "about cats".
- Feature: A property of an instance used in a prediction task. For example, a web page might have a feature "contains the word 'cat'".
- Feature Column: A set of related features, such as the set of all possible countries in which users might live. An example may have one or more features present in a feature column. "Feature column" is Google-specific terminology. A feature column is referred to as a "namespace" in the VW system (at Yahoo/Microsoft), or a field.
- Example: An instance (with its features) and a label.
- Model: A statistical representation of a prediction task. You train a model on examples then use the model to make predictions.
- Metric: A number that you care about. May or may not be directly optimized.
- Objective: A metric that your algorithm is trying to optimize.
- Pipeline: The infrastructure surrounding a machine learning algorithm. Includes gathering the data from the front end, putting it into training data files, training one or more models, and exporting the models to production.
- Click-through Rate The percentage of visitors to a web page who click a link in an ad.


## Building Great products:

Do machine learning like the great engineer you are, not like the great machine learning expert you aren’t.

Most of the problems you will face are, in fact, engineering problems. Even with all the resources of a great machine learning expert, most of the gains come from great features, not great machine learning algorithms. So, the basic approach is:

- Make sure your pipeline is solid end to end.
- Start with a reasonable objective.
- Add common­-sense features in a simple way.
- Make sure that your pipeline stays solid.
- This approach will work well for a long period of time. Diverge from this approach only when there are no more simple tricks to get you any farther. Adding complexity slows future releases.

## 1. Understand whether the time is right for building a machine learning system.

## 2. Deploying your first pipeline.

## 3. About launching and iterating while adding new features to your pipeline, how to evaluate models and training-serving skew.

## 4. what to do when you reach a plateau.

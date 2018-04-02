.. tensorflow-learning-note documentation master file, created by
   sphinx-quickstart on Mon Apr  2 20:40:58 2018.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.


Tensorflow 学习笔记
===================

.. toctree::
   :maxdepth: 2
   :caption: Contents:

   google
   doc/readme
   keras/readme
   lstm/readme



PROBLEMS
----------

颤抖吧，人类。

Tensor Tensor() is not an element of this graph.
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

I had this problem when doing inference in a different thread than where I loaded my model. Here's how I fixed the problem:

    Right after loading or constructing your model, save the TensorFlow graph:

.. code:: python

      graph = tf.get_default_graph()

In the other thread (or perhaps in an asynchronous event handler), do:

.. code:: python

      global graph
      with graph.as_default():
          (... do inference here ...)

I learned about this from https://www.tensorflow.org/versions/r0.11/api_docs/python/framework.html#get_default_graph


Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`

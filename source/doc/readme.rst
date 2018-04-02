==============
文档中的关键点
==============

.. contents::

手动指定设备来运行
------------------

.. code:: python

    # Creates a graph.
    with tf.device('/cpu:0'):
      a = tf.constant([1.0, 2.0, 3.0, 4.0, 5.0, 6.0], shape=[2, 3], name='a')
      b = tf.constant([1.0, 2.0, 3.0, 4.0, 5.0, 6.0], shape=[3, 2], name='b')
    c = tf.matmul(a, b)
    # Creates a session with log_device_placement set to True.
    sess = tf.Session(config=tf.ConfigProto(log_device_placement=True))
    # Runs the op.
    print(sess.run(c))

允许 GPU 内存上涨
------------------

开始的时候只会占用一点 gpu 内存，随程序占用而变大。
但是不会释放（黑人问号？？），因此可能导致更糟糕的内存分配。

.. code:: python

    config = tf.ConfigProto()
    config.gpu_options.allow_growth = True
    session = tf.Session(config=config)

多 GPU 不看了，现在还没那个命。。。

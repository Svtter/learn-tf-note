Google Deep learning
======================

从机器学习到深度学习
--------------------

softmax
^^^^^^^

softmax可以把数值转换为对应在0-1之间的概率。

.. math::

    $S({y_i}) = \frac{e^{y_i}}{\sum_{j}e^{y_{j}}}$

.. code:: python

    def softmax(x):
        return np.exp(x) / np.sum(np.exp(x), axis=0)


cross-entropy 交叉熵
^^^^^^^^^^^^^^^^^^^^

.. math::

    $(D(S, L) = -\sum_{j} L_{i} log(S_{i})$


正则化的作用
^^^^^^^^^^^^^^

正则化可以使训练速度提升，优化梯度下降的效果。

正则化可以参考一些函数直接进行。

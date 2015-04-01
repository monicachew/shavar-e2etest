shavar-e2etest
=================

Description
----------------
Basic end-to-end 'smoke' test for verifying mozilla-services/shavar (tracking protection) server deployment.

Usage
----------------

 * Clone repo 
 * run script
 * will download latest image of FF Nightly and run it with desired prefs for testing
 * Nightly will launch and display test page
 * Page will pause to allow for trackingprotection update to occur
 * if TP is enabled, test will pass

.. code:: bash

 $ git clone xxx
 $ cd shavar-e2etest
 $ ./tp_sanity_test.sh


Credits
----------------
Most excellent script by Matt Wobenstein

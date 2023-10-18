<p>
You can’t compile your compiler using itself yet, but if you have another compiler for your language written in some other language, you use _that_ one to compile your compiler once.
</p>
<p>
Now you can use the compiled version of your own compiler to compile future versions of itself, and you can discard the original one compiled from the other compiler. This is called **bootstrapping**, from the image of pulling yourself up by your own bootstraps.
</p>
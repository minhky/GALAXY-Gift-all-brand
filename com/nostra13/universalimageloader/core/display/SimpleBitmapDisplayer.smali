.class public final Lcom/nostra13/universalimageloader/core/display/SimpleBitmapDisplayer;
.super Ljava/lang/Object;
.source "SimpleBitmapDisplayer.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public display(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 30
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 31
    return-object p1
.end method

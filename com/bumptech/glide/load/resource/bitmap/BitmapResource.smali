.class public Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;
.super Ljava/lang/Object;
.source "BitmapResource.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/Resource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/Resource",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private final b:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .registers 5

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    if-nez p1, :cond_e

    .line 33
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Bitmap must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_e
    if-nez p2, :cond_19

    .line 36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "BitmapPool must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_19
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->a:Landroid/graphics/Bitmap;

    .line 39
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 40
    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;
    .registers 3

    .prologue
    .line 24
    if-nez p0, :cond_4

    .line 25
    const/4 v0, 0x0

    .line 27
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    goto :goto_3
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->a:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public d()V
    .registers 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->a(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 55
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 57
    :cond_f
    return-void
.end method

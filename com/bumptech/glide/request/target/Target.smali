.class public interface abstract Lcom/bumptech/glide/request/target/Target;
.super Ljava/lang/Object;
.source "Target.java"

# interfaces
.implements Lcom/bumptech/glide/manager/LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/manager/LifecycleListener;"
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/bumptech/glide/request/Request;)V
.end method

.method public abstract a(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
.end method

.method public abstract a(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract a(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<-TR;>;)V"
        }
    .end annotation
.end method

.method public abstract b(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract c()Lcom/bumptech/glide/request/Request;
.end method

.method public abstract c(Landroid/graphics/drawable/Drawable;)V
.end method

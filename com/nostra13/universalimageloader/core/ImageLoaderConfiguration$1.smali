.class Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$1;
.super Ljava/lang/Object;
.source "ImageLoaderConfiguration.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

.field private final synthetic val$builder:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;


# direct methods
.method constructor <init>(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$1;->this$0:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$1;->val$builder:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 90
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 91
    .local v0, "t":Ljava/lang/Thread;
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$1;->val$builder:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    # getter for: Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I
    invoke-static {v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$15(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 92
    return-object v0
.end method

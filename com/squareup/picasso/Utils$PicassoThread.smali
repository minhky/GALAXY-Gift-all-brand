.class Lcom/squareup/picasso/Utils$PicassoThread;
.super Ljava/lang/Thread;
.source "Utils.java"


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 406
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 407
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 410
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 411
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 412
    return-void
.end method

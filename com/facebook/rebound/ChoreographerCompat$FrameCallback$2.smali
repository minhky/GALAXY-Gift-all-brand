.class Lcom/facebook/rebound/ChoreographerCompat$FrameCallback$2;
.super Ljava/lang/Object;
.source "ChoreographerCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;->getRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;


# direct methods
.method constructor <init>(Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;)V
    .registers 2

    .prologue
    .line 116
    iput-object p1, p0, Lcom/facebook/rebound/ChoreographerCompat$FrameCallback$2;->this$0:Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 119
    iget-object v0, p0, Lcom/facebook/rebound/ChoreographerCompat$FrameCallback$2;->this$0:Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;->doFrame(J)V

    .line 120
    return-void
.end method

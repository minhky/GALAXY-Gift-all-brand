.class Lcom/facebook/UiLifecycleHelper$ActiveSessionBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UiLifecycleHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/UiLifecycleHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActiveSessionBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/UiLifecycleHelper;


# direct methods
.method private constructor <init>(Lcom/facebook/UiLifecycleHelper;)V
    .registers 2

    .prologue
    .line 261
    iput-object p1, p0, Lcom/facebook/UiLifecycleHelper$ActiveSessionBroadcastReceiver;->this$0:Lcom/facebook/UiLifecycleHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/UiLifecycleHelper;Lcom/facebook/UiLifecycleHelper$ActiveSessionBroadcastReceiver;)V
    .registers 3

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/facebook/UiLifecycleHelper$ActiveSessionBroadcastReceiver;-><init>(Lcom/facebook/UiLifecycleHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 264
    const-string v1, "com.facebook.sdk.ACTIVE_SESSION_SET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 265
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 266
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper$ActiveSessionBroadcastReceiver;->this$0:Lcom/facebook/UiLifecycleHelper;

    # getter for: Lcom/facebook/UiLifecycleHelper;->callback:Lcom/facebook/Session$StatusCallback;
    invoke-static {v1}, Lcom/facebook/UiLifecycleHelper;->access$0(Lcom/facebook/UiLifecycleHelper;)Lcom/facebook/Session$StatusCallback;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 267
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper$ActiveSessionBroadcastReceiver;->this$0:Lcom/facebook/UiLifecycleHelper;

    # getter for: Lcom/facebook/UiLifecycleHelper;->callback:Lcom/facebook/Session$StatusCallback;
    invoke-static {v1}, Lcom/facebook/UiLifecycleHelper;->access$0(Lcom/facebook/UiLifecycleHelper;)Lcom/facebook/Session$StatusCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 275
    .end local v0    # "session":Lcom/facebook/Session;
    :cond_23
    :goto_23
    return-void

    .line 269
    :cond_24
    const-string v1, "com.facebook.sdk.ACTIVE_SESSION_UNSET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 270
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 271
    .restart local v0    # "session":Lcom/facebook/Session;
    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper$ActiveSessionBroadcastReceiver;->this$0:Lcom/facebook/UiLifecycleHelper;

    # getter for: Lcom/facebook/UiLifecycleHelper;->callback:Lcom/facebook/Session$StatusCallback;
    invoke-static {v1}, Lcom/facebook/UiLifecycleHelper;->access$0(Lcom/facebook/UiLifecycleHelper;)Lcom/facebook/Session$StatusCallback;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 272
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper$ActiveSessionBroadcastReceiver;->this$0:Lcom/facebook/UiLifecycleHelper;

    # getter for: Lcom/facebook/UiLifecycleHelper;->callback:Lcom/facebook/Session$StatusCallback;
    invoke-static {v1}, Lcom/facebook/UiLifecycleHelper;->access$0(Lcom/facebook/UiLifecycleHelper;)Lcom/facebook/Session$StatusCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    goto :goto_23
.end method
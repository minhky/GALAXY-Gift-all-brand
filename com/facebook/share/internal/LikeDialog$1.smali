.class Lcom/facebook/share/internal/LikeDialog$1;
.super Lcom/facebook/share/internal/ResultProcessor;
.source "LikeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeDialog;->registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/LikeDialog;

.field final synthetic val$callback:Lcom/facebook/FacebookCallback;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeDialog;Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookCallback;)V
    .registers 4

    .prologue
    .line 112
    iput-object p1, p0, Lcom/facebook/share/internal/LikeDialog$1;->this$0:Lcom/facebook/share/internal/LikeDialog;

    iput-object p3, p0, Lcom/facebook/share/internal/LikeDialog$1;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-direct {p0, p2}, Lcom/facebook/share/internal/ResultProcessor;-><init>(Lcom/facebook/FacebookCallback;)V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/facebook/internal/AppCall;Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 115
    iget-object v0, p0, Lcom/facebook/share/internal/LikeDialog$1;->val$callback:Lcom/facebook/FacebookCallback;

    new-instance v1, Lcom/facebook/share/internal/LikeDialog$Result;

    invoke-direct {v1, p2}, Lcom/facebook/share/internal/LikeDialog$Result;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Lcom/facebook/FacebookCallback;->onSuccess(Ljava/lang/Object;)V

    .line 116
    return-void
.end method

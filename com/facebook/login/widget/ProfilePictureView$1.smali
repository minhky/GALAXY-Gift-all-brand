.class Lcom/facebook/login/widget/ProfilePictureView$1;
.super Ljava/lang/Object;
.source "ProfilePictureView.java"

# interfaces
.implements Lcom/facebook/internal/ImageRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/widget/ProfilePictureView;->sendImageRequest(Z)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/widget/ProfilePictureView;


# direct methods
.method constructor <init>(Lcom/facebook/login/widget/ProfilePictureView;)V
    .registers 2

    .prologue
    .line 444
    iput-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView$1;->this$0:Lcom/facebook/login/widget/ProfilePictureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/internal/ImageResponse;)V
    .registers 3

    .prologue
    .line 447
    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView$1;->this$0:Lcom/facebook/login/widget/ProfilePictureView;

    # invokes: Lcom/facebook/login/widget/ProfilePictureView;->processResponse(Lcom/facebook/internal/ImageResponse;)V
    invoke-static {v0, p1}, Lcom/facebook/login/widget/ProfilePictureView;->access$000(Lcom/facebook/login/widget/ProfilePictureView;Lcom/facebook/internal/ImageResponse;)V

    .line 448
    return-void
.end method

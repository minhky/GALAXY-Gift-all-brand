.class Lcom/bzbs/lib/survey/control/VideoControllerView$3;
.super Ljava/lang/Object;
.source "VideoControllerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/lib/survey/control/VideoControllerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/control/VideoControllerView;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/control/VideoControllerView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/control/VideoControllerView;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$3;->this$0:Lcom/bzbs/lib/survey/control/VideoControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 424
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$3;->this$0:Lcom/bzbs/lib/survey/control/VideoControllerView;

    # invokes: Lcom/bzbs/lib/survey/control/VideoControllerView;->doToggleFullscreen()V
    invoke-static {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->access$200(Lcom/bzbs/lib/survey/control/VideoControllerView;)V

    .line 425
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$3;->this$0:Lcom/bzbs/lib/survey/control/VideoControllerView;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/control/VideoControllerView;->show(I)V

    .line 426
    return-void
.end method

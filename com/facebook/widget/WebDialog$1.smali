.class Lcom/facebook/widget/WebDialog$1;
.super Ljava/lang/Object;
.source "WebDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/WebDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/WebDialog;


# direct methods
.method constructor <init>(Lcom/facebook/widget/WebDialog;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/widget/WebDialog$1;->this$0:Lcom/facebook/widget/WebDialog;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$1;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->dismiss()V

    .line 221
    return-void
.end method

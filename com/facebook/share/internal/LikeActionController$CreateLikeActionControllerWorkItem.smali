.class Lcom/facebook/share/internal/LikeActionController$CreateLikeActionControllerWorkItem;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private callback:Lcom/facebook/share/internal/LikeActionController$CreationCallback;

.field private objectId:Ljava/lang/String;

.field private objectType:Lcom/facebook/share/widget/LikeView$ObjectType;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V
    .registers 4

    .prologue
    .line 1757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1758
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$CreateLikeActionControllerWorkItem;->objectId:Ljava/lang/String;

    .line 1759
    iput-object p2, p0, Lcom/facebook/share/internal/LikeActionController$CreateLikeActionControllerWorkItem;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 1760
    iput-object p3, p0, Lcom/facebook/share/internal/LikeActionController$CreateLikeActionControllerWorkItem;->callback:Lcom/facebook/share/internal/LikeActionController$CreationCallback;

    .line 1761
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$CreateLikeActionControllerWorkItem;->objectId:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$CreateLikeActionControllerWorkItem;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController$CreateLikeActionControllerWorkItem;->callback:Lcom/facebook/share/internal/LikeActionController$CreationCallback;

    # invokes: Lcom/facebook/share/internal/LikeActionController;->createControllerForObjectIdAndType(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V
    invoke-static {v0, v1, v2}, Lcom/facebook/share/internal/LikeActionController;->access$2700(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V

    .line 1766
    return-void
.end method

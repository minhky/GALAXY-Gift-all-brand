.class public Lcom/facebook/share/Sharer$Result;
.super Ljava/lang/Object;
.source "Sharer.java"


# instance fields
.field final postId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/facebook/share/Sharer$Result;->postId:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public getPostId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/share/Sharer$Result;->postId:Ljava/lang/String;

    return-object v0
.end method

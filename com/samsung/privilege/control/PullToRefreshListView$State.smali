.class final enum Lcom/samsung/privilege/control/PullToRefreshListView$State;
.super Ljava/lang/Enum;
.source "PullToRefreshListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/control/PullToRefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/privilege/control/PullToRefreshListView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/samsung/privilege/control/PullToRefreshListView$State;

.field public static final enum PULL_TO_REFRESH:Lcom/samsung/privilege/control/PullToRefreshListView$State;

.field public static final enum REFRESHING:Lcom/samsung/privilege/control/PullToRefreshListView$State;

.field public static final enum RELEASE_TO_REFRESH:Lcom/samsung/privilege/control/PullToRefreshListView$State;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    new-instance v0, Lcom/samsung/privilege/control/PullToRefreshListView$State;

    const-string v1, "PULL_TO_REFRESH"

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/control/PullToRefreshListView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/privilege/control/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    new-instance v0, Lcom/samsung/privilege/control/PullToRefreshListView$State;

    const-string v1, "RELEASE_TO_REFRESH"

    invoke-direct {v0, v1, v3}, Lcom/samsung/privilege/control/PullToRefreshListView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/privilege/control/PullToRefreshListView$State;->RELEASE_TO_REFRESH:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    new-instance v0, Lcom/samsung/privilege/control/PullToRefreshListView$State;

    const-string v1, "REFRESHING"

    invoke-direct {v0, v1, v4}, Lcom/samsung/privilege/control/PullToRefreshListView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/privilege/control/PullToRefreshListView$State;->REFRESHING:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/privilege/control/PullToRefreshListView$State;

    sget-object v1, Lcom/samsung/privilege/control/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/privilege/control/PullToRefreshListView$State;->RELEASE_TO_REFRESH:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/privilege/control/PullToRefreshListView$State;->REFRESHING:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/privilege/control/PullToRefreshListView$State;->ENUM$VALUES:[Lcom/samsung/privilege/control/PullToRefreshListView$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/privilege/control/PullToRefreshListView$State;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/samsung/privilege/control/PullToRefreshListView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/control/PullToRefreshListView$State;

    return-object v0
.end method

.method public static values()[Lcom/samsung/privilege/control/PullToRefreshListView$State;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/samsung/privilege/control/PullToRefreshListView$State;->ENUM$VALUES:[Lcom/samsung/privilege/control/PullToRefreshListView$State;

    array-length v1, v0

    new-array v2, v1, [Lcom/samsung/privilege/control/PullToRefreshListView$State;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
